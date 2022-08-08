part of 'train_events_bloc.dart';

@freezed
class TrainEventsState with _$TrainEventsState {
  const factory TrainEventsState.init() = TrainEventsInit;
  const factory TrainEventsState.loading() = TrainEventsLoading;
  const factory TrainEventsState.loaded(List<TrainEvent> eventList) =
      TrainEventsLoaded;
  const factory TrainEventsState.error(String message) = TrainEventsError;
}
