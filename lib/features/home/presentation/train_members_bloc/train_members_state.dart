part of 'train_members_bloc.dart';

@freezed
class TrainMembersState with _$TrainMembersState {
  const factory TrainMembersState.init() = TrainMembersInit;
  const factory TrainMembersState.loading() = TrainMembersLoading;
  const factory TrainMembersState.loaded(List<User> userList) =
      TrainMembersLoaded;
  const factory TrainMembersState.error(String message) = TrainMembersError;
}
