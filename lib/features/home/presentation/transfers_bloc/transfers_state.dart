part of 'transfers_bloc.dart';

@freezed
class TransfersState with _$TransfersState {
  const factory TransfersState.init() = TransfersStateInit;
  const factory TransfersState.loading() = TransfersStateLoading;
  const factory TransfersState.loaded(Transfers transfers) =
      TransfersStateLoaded;
  const factory TransfersState.error(String message) = TransfersStateError;
}
