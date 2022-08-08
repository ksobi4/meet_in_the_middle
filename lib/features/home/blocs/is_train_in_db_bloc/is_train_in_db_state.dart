part of 'is_train_in_db_bloc.dart';

@freezed
class IsTrainInDbState with _$IsTrainInDbState {
  const factory IsTrainInDbState.init() = IsTrainInDbStateInit;
  const factory IsTrainInDbState.loading() = IsTrainInDbStateLoading;
  const factory IsTrainInDbState.loaded() = IsTrainInDbStateLoaded;
  const factory IsTrainInDbState.error(String message) = IsTrainInDbStateError;
}
