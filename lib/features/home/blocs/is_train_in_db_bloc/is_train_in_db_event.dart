part of 'is_train_in_db_bloc.dart';

@freezed
class IsTrainInDbEvent with _$IsTrainInDbEvent {
  const factory IsTrainInDbEvent.check(Train train) = IsTrainInDbCheck;
}
