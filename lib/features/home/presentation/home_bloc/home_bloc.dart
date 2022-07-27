import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mitm4/features/home/service/home_service.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/errors/failure.dart';
import '../../model/train_event.dart';
import '../../model/transfers.dart';
import '../../model/user.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService homeService;

  HomeBloc({
    required this.homeService,
  }) : super(const HomeState.init()) {
    on<HomeEventSearchStation>(_onSearchStation);
    on<HomeEventSearchTransfers>(_onSearchTransfers);
    // on<HomeEventGetTrainMembers>(_onGetTrainMembers);
    // on<HomeEventGetTrainEvents>(_onGetTrainEvents);
  }

  Future<void> _onSearchStation(
      HomeEventSearchStation event, Emitter<HomeState> emit) async {}

  Future<void> _onSearchTransfers(
      HomeEventSearchTransfers event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());

    Either<Failure, Transfers> failureOrTransfers =
        await homeService.getTransfers(
            event.startStation, event.endStation, event.date, event.time);

    emit(_handlerSearchTransfers(failureOrTransfers));
  }

  // FutureOr<void> _onGetTrainMembers(
  //     HomeEventGetTrainMembers event, Emitter<HomeState> emit) async {
  //   emit(const HomeState.loadingGetTrainMembers());

  //   Either<Failure, List<User>> failureOrUserList =
  //       await homeService.getTrainMembers(event.train);

  //   emit(_handlerOnGetTrainMembers(failureOrUserList));
  // }

  // HomeState _handlerOnGetTrainMembers(
  //     Either<Failure, List<User>> failureOrUserList) {
  //   return failureOrUserList.fold(
  //       (failure) => HomeState.errorGetTrainMembers(failure.message),
  //       (userList) => HomeState.loadedGetTrainMembers(userList));
  // }
}

HomeState _handlerSearchTransfers(
    Either<Failure, Transfers> failureOrTransfers) {
  return failureOrTransfers.fold(
    (failure) => HomeState.error(failure.message),
    (transfers) => HomeState.loaded(transfers),
  );
}
