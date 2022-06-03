import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mitm4/core/errors/failure.dart';

import '../../model/transfers.dart';
import '../../service/home_service.dart';

part 'is_train_in_db_bloc.freezed.dart';
part 'is_train_in_db_event.dart';
part 'is_train_in_db_state.dart';

class IsTrainInDbBloc extends Bloc<IsTrainInDbEvent, IsTrainInDbState> {
  final HomeService homeService;
  IsTrainInDbBloc(
    this.homeService,
  ) : super(const IsTrainInDbState.init()) {
    on<IsTrainInDbEvent>(_onCheck);
  }

  FutureOr<void> _onCheck(
      IsTrainInDbEvent event, Emitter<IsTrainInDbState> emit) async {
    emit(const IsTrainInDbState.loading());

    Either<Failure, bool> failureOrBool =
        await homeService.isTrainInDB(event.train);

    emit(_handler(failureOrBool));
  }

  IsTrainInDbState _handler(Either<Failure, bool> failureOrBool) {
    return failureOrBool.fold((l) => IsTrainInDbState.error(l.message),
        (r) => const IsTrainInDbState.loaded());
  }
}
