part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  //home load user's transfers
  const factory HomeState.init() = HomeStateInit;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.loaded(Transfers transfers) = HomeStateLoaded;

  const factory HomeState.error(String message) = HomeStateError;

  //search stataion
  const factory HomeState.initSearchStation() = HomeStateInitSearchStation;
  const factory HomeState.loadingSearchStaion() = HomeStateLoadingSearchStation;
  const factory HomeState.loadedSearchStation(List<String> list) =
      HomeStateLoadedSearchStation;

  const factory HomeState.errorSearchStation(String message) =
      HomeStateErrorSearchStation;

  //get Events and members of train
  const factory HomeState.initGetEventsAndMembers() =
      HomeStateInitGetEventsAndMembers;
  const factory HomeState.loadingGetEventsAndMembers() =
      HomeStateLoadingGetEventsAndMembers;
  const factory HomeState.loadedGetEventsAndMembers() =
      HomeStateLoadedGetEventsAndMembers;
}
