// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitm4/core/models/user.dart';

import '../../../../core/errors/failure.dart';
import '../../model/transfers.dart';
import '../../service/home_service.dart';

part 'train_members_bloc.freezed.dart';
part 'train_members_event.dart';
part 'train_members_state.dart';

class TrainMembersBloc extends Bloc<TrainMembersEvent, TrainMembersState> {
  final HomeService homeService;
  TrainMembersBloc(
    this.homeService,
  ) : super(const TrainMembersState.init()) {
    on<TrainMembersGet>(_get);
  }

  FutureOr<void> _get(
      TrainMembersGet event, Emitter<TrainMembersState> emit) async {
    emit(const TrainMembersState.loading());

    Either<Failure, List<User>> failureOrUserList =
        await homeService.getTrainMembers(event.train);

    emit(_handlerOnGetTrainMembers(failureOrUserList));
  }

  TrainMembersState _handlerOnGetTrainMembers(
      Either<Failure, List<User>> failureOrUserList) {
    return failureOrUserList.fold(
        (failure) => TrainMembersState.error(failure.message),
        (userList) => TrainMembersState.loaded(userList));
  }
}
