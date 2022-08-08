part of 'is_event_member_bloc.dart';

@freezed
class IsEventMemberEvent with _$IsEventMemberEvent {
  const factory IsEventMemberEvent.get(String userId, TrainEvent event) =
      IsEventMemberGet;
}
