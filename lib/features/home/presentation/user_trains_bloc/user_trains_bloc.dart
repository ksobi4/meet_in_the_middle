// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../model/transfers.dart';
import '../../service/home_service.dart';

part 'user_trains_bloc.freezed.dart';
part 'user_trains_event.dart';
part 'user_trains_state.dart';

class UserTrainsBloc extends Bloc<UserTrainsEvent, UserTrainsState> {
  final HomeService homeService;
  UserTrainsBloc(
    this.homeService,
  ) : super(const UserTrainsState.init()) {
    on<UserTrainsEvent>(_get);
  }

  FutureOr<void> _get(
      UserTrainsEvent event, Emitter<UserTrainsState> emit) async {
    emit(const UserTrainsState.loading());

    Either<Failure, List<Train>> failureOrTrainList =
        await homeService.getTrainsForUser(event.userId);
    emit(_handler(failureOrTrainList));
  }

  UserTrainsState _handler(Either<Failure, List<Train>> failureOrTrainList) {
    return failureOrTrainList.fold(
        (failure) => UserTrainsState.error(failure.message),
        (trainList) => UserTrainsState.loaded(trainList));
  }
}
