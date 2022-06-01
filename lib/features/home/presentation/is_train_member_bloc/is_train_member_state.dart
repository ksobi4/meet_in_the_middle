part of 'is_train_member_bloc.dart';

@freezed
class IsTrainMemberState with _$IsTrainMemberState {
  const factory IsTrainMemberState.init() = IsTrainMemberInit;
  const factory IsTrainMemberState.loading() = IsTrainMemberLoading;
  const factory IsTrainMemberState.loaded(bool isTrainMember) =
      IsTrainMemberLoaded;
  const factory IsTrainMemberState.error(String message) = IsTrainMemberError;
}
