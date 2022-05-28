import 'dart:async';
import 'dart:developer';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mitm4/features/home/service/home_service.dart';
import 'package:uuid/uuid.dart';

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
    on<HomeEventGetEventsAndMembers>(_onGetEventsAndMembers);
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

  FutureOr<void> _onGetEventsAndMembers(
      HomeEventGetEventsAndMembers event, Emitter<HomeState> emit) async {
    emit(const HomeState.loadingGetEventsAndMembers());

    final db = FirebaseDatabase.instance;
    Query query = db.ref('trains').orderByChild('train_number').equalTo('1111');

    try {
      DataSnapshot snapshot = await query.get();

      if (snapshot.exists) {
      } else {
        String uuid = const Uuid().v4();
        db.ref('trains/$uuid').set(event.train.toJson());
      }
      log('data= ${snapshot.value.toString()}');
    } catch (e) {
      log('error $e');
    }

    ;

    // final snapshot = await db.ref('trains/');

    // emit(const HomeState.loadedGetEventsAndMembers());
  }
}

HomeState _handlerSearchTransfers(
    Either<Failure, Transfers> failureOrTransfers) {
  return failureOrTransfers.fold(
    (failure) => HomeState.error(failure.message),
    (transfers) => HomeState.loaded(transfers),
  );
}