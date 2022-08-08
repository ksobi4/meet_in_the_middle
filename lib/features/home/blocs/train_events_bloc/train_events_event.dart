part of 'train_events_bloc.dart';

@freezed
class TrainEventsEvent with _$TrainEventsEvent {
  const factory TrainEventsEvent.get(Train train) = TrainEventsGet;
}
