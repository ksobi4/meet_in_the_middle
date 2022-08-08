part of 'is_event_member_bloc.dart';

@freezed
class IsEventMemberState with _$IsEventMemberState {
  const factory IsEventMemberState.init() = IsEventMemberInit;
  const factory IsEventMemberState.loading() = IsEventMemberLoading;
  const factory IsEventMemberState.loaded(bool isEventMember) =
      IsEventMemberLoaded;
  const factory IsEventMemberState.error(String message) = IsEventMemberError;
}
