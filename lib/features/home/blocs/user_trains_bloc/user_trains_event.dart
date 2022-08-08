part of 'user_trains_bloc.dart';

@freezed
class UserTrainsEvent with _$UserTrainsEvent {
  const factory UserTrainsEvent.get(String userId) = UserTrainsGet;
}
