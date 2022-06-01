part of 'train_members_bloc.dart';

@freezed
class TrainMembersEvent with _$TrainMembersEvent {
  const factory TrainMembersEvent.get(Train train) = TrainMembersGet;
}
