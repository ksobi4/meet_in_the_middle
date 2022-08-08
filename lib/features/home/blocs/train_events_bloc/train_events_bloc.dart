// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../model/train_event.dart';
import '../../model/transfers.dart';
import '../../service/home_service.dart';

part 'train_events_bloc.freezed.dart';
part 'train_events_event.dart';
part 'train_events_state.dart';

class TrainEventsBloc extends Bloc<TrainEventsEvent, TrainEventsState> {
  final HomeService homeService;

  TrainEventsBloc(
    this.homeService,
  ) : super(const TrainEventsState.init()) {
    on<TrainEventsGet>(_onGet);
  }

  Future<void> _onGet(
      TrainEventsEvent event, Emitter<TrainEventsState> emit) async {
    emit(const TrainEventsState.init());

    Either<Failure, List<TrainEvent>> failureOrTrainEvent =
        await homeService.getTrainEvents(event.train);

    emit(_handlerGetTrainEvents(failureOrTrainEvent));
  }

  TrainEventsState _handlerGetTrainEvents(
      Either<Failure, List<TrainEvent>> failureOrTrainEvent) {
    return failureOrTrainEvent.fold(
        (failure) => TrainEventsState.error(failure.message),
        (eventList) => TrainEventsState.loaded(eventList));
  }
}
