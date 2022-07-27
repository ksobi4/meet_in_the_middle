part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  //home load user's transfers
  const factory HomeState.init() = HomeStateInit;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.loaded(Transfers transfers) = HomeStateLoaded;

  const factory HomeState.error(String message) = HomeStateError;
}
