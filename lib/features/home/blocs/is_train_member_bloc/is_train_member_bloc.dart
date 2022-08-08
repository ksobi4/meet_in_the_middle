// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../model/transfers.dart';
import '../../service/home_service.dart';

part 'is_train_member_bloc.freezed.dart';
part 'is_train_member_event.dart';
part 'is_train_member_state.dart';

class IsTrainMemberBloc extends Bloc<IsTrainMemberEvent, IsTrainMemberState> {
  final HomeService homeService;
  IsTrainMemberBloc(
    this.homeService,
  ) : super(const IsTrainMemberState.init()) {
    on<IsTrainMemberGet>(_onGet);
  }

  FutureOr<void> _onGet(
      IsTrainMemberGet event, Emitter<IsTrainMemberState> emit) async {
    emit(const IsTrainMemberState.loading());

    Either<Failure, bool> failureOrBool =
        await homeService.isUserInTrain(event.userId, event.train);

    emit(_handlerGet(failureOrBool));
  }
}

IsTrainMemberState _handlerGet(Either<Failure, bool> failureOrBool) {
  return failureOrBool.fold(
      (failure) => IsTrainMemberState.error(failure.message),
      (isTrainMember) => IsTrainMemberState.loaded(isTrainMember));
}
