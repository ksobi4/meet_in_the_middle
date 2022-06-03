part of 'user_trains_bloc.dart';

@freezed
class UserTrainsState with _$UserTrainsState {
  const factory UserTrainsState.init() = UserTrainsStateInit;
  const factory UserTrainsState.loading() = UserTrainsStateLoading;
  const factory UserTrainsState.loaded(List<Train> trainList) =
      UserTrainsStateLoaded;
  const factory UserTrainsState.error(String message) = UserTrainsStateError;
}
