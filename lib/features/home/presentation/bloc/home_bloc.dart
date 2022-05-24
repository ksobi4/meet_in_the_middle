import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mitm4/features/home/service/home_service.dart';

import '../../../../core/errors/failure.dart';
import '../../model/transfers.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService homeService;

  HomeBloc({
    required this.homeService,
  }) : super(const HomeState.init()) {
    on<HomeSearchStation>(_onSearchStation);
    on<HomeSearchTransfers>(_onSearchTransfers);
  }

  Future<void> _onSearchStation(
      HomeSearchStation event, Emitter<HomeState> emit) async {}

  Future<void> _onSearchTransfers(
      HomeSearchTransfers event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());

    Either<Failure, Transfers> failureOrTransfers =
        await homeService.getTransfers(
            event.startStation, event.endStation, event.date, event.time);

    emit(_handlerSearchTransfers(failureOrTransfers));
  }
}

HomeState _handlerSearchTransfers(
    Either<Failure, Transfers> failureOrTransfers) {
  return failureOrTransfers.fold(
    (failure) => HomeState.error(failure.message),
    (transfers) => HomeState.loaded(transfers),
  );
}
