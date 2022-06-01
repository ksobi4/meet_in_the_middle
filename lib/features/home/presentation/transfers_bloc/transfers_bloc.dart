// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../model/transfers.dart';
import '../../service/home_service.dart';

part 'transfers_bloc.freezed.dart';
part 'transfers_event.dart';
part 'transfers_state.dart';

class TransfersBloc extends Bloc<TransfersEvent, TransfersState> {
  final HomeService homeService;
  TransfersBloc(
    this.homeService,
  ) : super(const TransfersState.init()) {
    on<TransfersEvent>(_get);
  }

  FutureOr<void> _get(
      TransfersEvent event, Emitter<TransfersState> emit) async {
    emit(const TransfersState.loading());

    Either<Failure, Transfers> failureOrTransfers =
        await homeService.getTransfers(
            event.startStation, event.endStation, event.date, event.time);

    emit(_handlerSearchTransfers(failureOrTransfers));
  }
}

TransfersState _handlerSearchTransfers(
    Either<Failure, Transfers> failureOrTransfers) {
  return failureOrTransfers.fold(
    (failure) => TransfersState.error(failure.message),
    (transfers) => TransfersState.loaded(transfers),
  );
}
