part of 'transfers_bloc.dart';

@freezed
class TransfersEvent with _$TransfersEvent {
  const factory TransfersEvent.get(
          String startStation, String endStation, String date, String time) =
      TransfersGet;
}
