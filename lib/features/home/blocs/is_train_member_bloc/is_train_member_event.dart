part of 'is_train_member_bloc.dart';

@freezed
class IsTrainMemberEvent with _$IsTrainMemberEvent {
  const factory IsTrainMemberEvent.get(String userId, Train train) =
      IsTrainMemberGet;
}
