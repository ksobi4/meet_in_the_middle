part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.searchTransfers(
          String startStation, String endStation, String date, String time) =
      HomeEventSearchTransfers;
  const factory HomeEvent.searchStation(String stringPart) =
      HomeEventSearchStation;
}
