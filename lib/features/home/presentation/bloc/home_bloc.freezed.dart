// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String startStation, String endStation, String date, String time)
        searchTransfers,
    required TResult Function(String stringPart) searchStation,
    required TResult Function(Train train) getEventsAndMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        searchTransfers,
    TResult Function(String stringPart)? searchStation,
    TResult Function(Train train)? getEventsAndMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        searchTransfers,
    TResult Function(String stringPart)? searchStation,
    TResult Function(Train train)? getEventsAndMembers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSearchTransfers value) searchTransfers,
    required TResult Function(HomeSearchStation value) searchStation,
    required TResult Function(HomeEventGetEventsAndMembers value)
        getEventsAndMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeSearchTransfers value)? searchTransfers,
    TResult Function(HomeSearchStation value)? searchStation,
    TResult Function(HomeEventGetEventsAndMembers value)? getEventsAndMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSearchTransfers value)? searchTransfers,
    TResult Function(HomeSearchStation value)? searchStation,
    TResult Function(HomeEventGetEventsAndMembers value)? getEventsAndMembers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$HomeSearchTransfersCopyWith<$Res> {
  factory _$$HomeSearchTransfersCopyWith(_$HomeSearchTransfers value,
          $Res Function(_$HomeSearchTransfers) then) =
      __$$HomeSearchTransfersCopyWithImpl<$Res>;
  $Res call({String startStation, String endStation, String date, String time});
}

/// @nodoc
class __$$HomeSearchTransfersCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$HomeSearchTransfersCopyWith<$Res> {
  __$$HomeSearchTransfersCopyWithImpl(
      _$HomeSearchTransfers _value, $Res Function(_$HomeSearchTransfers) _then)
      : super(_value, (v) => _then(v as _$HomeSearchTransfers));

  @override
  _$HomeSearchTransfers get _value => super._value as _$HomeSearchTransfers;

  @override
  $Res call({
    Object? startStation = freezed,
    Object? endStation = freezed,
    Object? date = freezed,
    Object? time = freezed,
  }) {
    return _then(_$HomeSearchTransfers(
      startStation == freezed
          ? _value.startStation
          : startStation // ignore: cast_nullable_to_non_nullable
              as String,
      endStation == freezed
          ? _value.endStation
          : endStation // ignore: cast_nullable_to_non_nullable
              as String,
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeSearchTransfers implements HomeSearchTransfers {
  const _$HomeSearchTransfers(
      this.startStation, this.endStation, this.date, this.time);

  @override
  final String startStation;
  @override
  final String endStation;
  @override
  final String date;
  @override
  final String time;

  @override
  String toString() {
    return 'HomeEvent.searchTransfers(startStation: $startStation, endStation: $endStation, date: $date, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSearchTransfers &&
            const DeepCollectionEquality()
                .equals(other.startStation, startStation) &&
            const DeepCollectionEquality()
                .equals(other.endStation, endStation) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startStation),
      const DeepCollectionEquality().hash(endStation),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$HomeSearchTransfersCopyWith<_$HomeSearchTransfers> get copyWith =>
      __$$HomeSearchTransfersCopyWithImpl<_$HomeSearchTransfers>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String startStation, String endStation, String date, String time)
        searchTransfers,
    required TResult Function(String stringPart) searchStation,
    required TResult Function(Train train) getEventsAndMembers,
  }) {
    return searchTransfers(startStation, endStation, date, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        searchTransfers,
    TResult Function(String stringPart)? searchStation,
    TResult Function(Train train)? getEventsAndMembers,
  }) {
    return searchTransfers?.call(startStation, endStation, date, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        searchTransfers,
    TResult Function(String stringPart)? searchStation,
    TResult Function(Train train)? getEventsAndMembers,
    required TResult orElse(),
  }) {
    if (searchTransfers != null) {
      return searchTransfers(startStation, endStation, date, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSearchTransfers value) searchTransfers,
    required TResult Function(HomeSearchStation value) searchStation,
    required TResult Function(HomeEventGetEventsAndMembers value)
        getEventsAndMembers,
  }) {
    return searchTransfers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeSearchTransfers value)? searchTransfers,
    TResult Function(HomeSearchStation value)? searchStation,
    TResult Function(HomeEventGetEventsAndMembers value)? getEventsAndMembers,
  }) {
    return searchTransfers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSearchTransfers value)? searchTransfers,
    TResult Function(HomeSearchStation value)? searchStation,
    TResult Function(HomeEventGetEventsAndMembers value)? getEventsAndMembers,
    required TResult orElse(),
  }) {
    if (searchTransfers != null) {
      return searchTransfers(this);
    }
    return orElse();
  }
}

abstract class HomeSearchTransfers implements HomeEvent {
  const factory HomeSearchTransfers(
      final String startStation,
      final String endStation,
      final String date,
      final String time) = _$HomeSearchTransfers;

  String get startStation => throw _privateConstructorUsedError;
  String get endStation => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomeSearchTransfersCopyWith<_$HomeSearchTransfers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeSearchStationCopyWith<$Res> {
  factory _$$HomeSearchStationCopyWith(
          _$HomeSearchStation value, $Res Function(_$HomeSearchStation) then) =
      __$$HomeSearchStationCopyWithImpl<$Res>;
  $Res call({String stringPart});
}

/// @nodoc
class __$$HomeSearchStationCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$HomeSearchStationCopyWith<$Res> {
  __$$HomeSearchStationCopyWithImpl(
      _$HomeSearchStation _value, $Res Function(_$HomeSearchStation) _then)
      : super(_value, (v) => _then(v as _$HomeSearchStation));

  @override
  _$HomeSearchStation get _value => super._value as _$HomeSearchStation;

  @override
  $Res call({
    Object? stringPart = freezed,
  }) {
    return _then(_$HomeSearchStation(
      stringPart == freezed
          ? _value.stringPart
          : stringPart // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeSearchStation implements HomeSearchStation {
  const _$HomeSearchStation(this.stringPart);

  @override
  final String stringPart;

  @override
  String toString() {
    return 'HomeEvent.searchStation(stringPart: $stringPart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSearchStation &&
            const DeepCollectionEquality()
                .equals(other.stringPart, stringPart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stringPart));

  @JsonKey(ignore: true)
  @override
  _$$HomeSearchStationCopyWith<_$HomeSearchStation> get copyWith =>
      __$$HomeSearchStationCopyWithImpl<_$HomeSearchStation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String startStation, String endStation, String date, String time)
        searchTransfers,
    required TResult Function(String stringPart) searchStation,
    required TResult Function(Train train) getEventsAndMembers,
  }) {
    return searchStation(stringPart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        searchTransfers,
    TResult Function(String stringPart)? searchStation,
    TResult Function(Train train)? getEventsAndMembers,
  }) {
    return searchStation?.call(stringPart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        searchTransfers,
    TResult Function(String stringPart)? searchStation,
    TResult Function(Train train)? getEventsAndMembers,
    required TResult orElse(),
  }) {
    if (searchStation != null) {
      return searchStation(stringPart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSearchTransfers value) searchTransfers,
    required TResult Function(HomeSearchStation value) searchStation,
    required TResult Function(HomeEventGetEventsAndMembers value)
        getEventsAndMembers,
  }) {
    return searchStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeSearchTransfers value)? searchTransfers,
    TResult Function(HomeSearchStation value)? searchStation,
    TResult Function(HomeEventGetEventsAndMembers value)? getEventsAndMembers,
  }) {
    return searchStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSearchTransfers value)? searchTransfers,
    TResult Function(HomeSearchStation value)? searchStation,
    TResult Function(HomeEventGetEventsAndMembers value)? getEventsAndMembers,
    required TResult orElse(),
  }) {
    if (searchStation != null) {
      return searchStation(this);
    }
    return orElse();
  }
}

abstract class HomeSearchStation implements HomeEvent {
  const factory HomeSearchStation(final String stringPart) =
      _$HomeSearchStation;

  String get stringPart => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomeSearchStationCopyWith<_$HomeSearchStation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventGetEventsAndMembersCopyWith<$Res> {
  factory _$$HomeEventGetEventsAndMembersCopyWith(
          _$HomeEventGetEventsAndMembers value,
          $Res Function(_$HomeEventGetEventsAndMembers) then) =
      __$$HomeEventGetEventsAndMembersCopyWithImpl<$Res>;
  $Res call({Train train});
}

/// @nodoc
class __$$HomeEventGetEventsAndMembersCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$HomeEventGetEventsAndMembersCopyWith<$Res> {
  __$$HomeEventGetEventsAndMembersCopyWithImpl(
      _$HomeEventGetEventsAndMembers _value,
      $Res Function(_$HomeEventGetEventsAndMembers) _then)
      : super(_value, (v) => _then(v as _$HomeEventGetEventsAndMembers));

  @override
  _$HomeEventGetEventsAndMembers get _value =>
      super._value as _$HomeEventGetEventsAndMembers;

  @override
  $Res call({
    Object? train = freezed,
  }) {
    return _then(_$HomeEventGetEventsAndMembers(
      train == freezed
          ? _value.train
          : train // ignore: cast_nullable_to_non_nullable
              as Train,
    ));
  }
}

/// @nodoc

class _$HomeEventGetEventsAndMembers implements HomeEventGetEventsAndMembers {
  const _$HomeEventGetEventsAndMembers(this.train);

  @override
  final Train train;

  @override
  String toString() {
    return 'HomeEvent.getEventsAndMembers(train: $train)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventGetEventsAndMembers &&
            const DeepCollectionEquality().equals(other.train, train));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(train));

  @JsonKey(ignore: true)
  @override
  _$$HomeEventGetEventsAndMembersCopyWith<_$HomeEventGetEventsAndMembers>
      get copyWith => __$$HomeEventGetEventsAndMembersCopyWithImpl<
          _$HomeEventGetEventsAndMembers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String startStation, String endStation, String date, String time)
        searchTransfers,
    required TResult Function(String stringPart) searchStation,
    required TResult Function(Train train) getEventsAndMembers,
  }) {
    return getEventsAndMembers(train);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        searchTransfers,
    TResult Function(String stringPart)? searchStation,
    TResult Function(Train train)? getEventsAndMembers,
  }) {
    return getEventsAndMembers?.call(train);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        searchTransfers,
    TResult Function(String stringPart)? searchStation,
    TResult Function(Train train)? getEventsAndMembers,
    required TResult orElse(),
  }) {
    if (getEventsAndMembers != null) {
      return getEventsAndMembers(train);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSearchTransfers value) searchTransfers,
    required TResult Function(HomeSearchStation value) searchStation,
    required TResult Function(HomeEventGetEventsAndMembers value)
        getEventsAndMembers,
  }) {
    return getEventsAndMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeSearchTransfers value)? searchTransfers,
    TResult Function(HomeSearchStation value)? searchStation,
    TResult Function(HomeEventGetEventsAndMembers value)? getEventsAndMembers,
  }) {
    return getEventsAndMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSearchTransfers value)? searchTransfers,
    TResult Function(HomeSearchStation value)? searchStation,
    TResult Function(HomeEventGetEventsAndMembers value)? getEventsAndMembers,
    required TResult orElse(),
  }) {
    if (getEventsAndMembers != null) {
      return getEventsAndMembers(this);
    }
    return orElse();
  }
}

abstract class HomeEventGetEventsAndMembers implements HomeEvent {
  const factory HomeEventGetEventsAndMembers(final Train train) =
      _$HomeEventGetEventsAndMembers;

  Train get train => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomeEventGetEventsAndMembersCopyWith<_$HomeEventGetEventsAndMembers>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$$HomeStateInitCopyWith<$Res> {
  factory _$$HomeStateInitCopyWith(
          _$HomeStateInit value, $Res Function(_$HomeStateInit) then) =
      __$$HomeStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateInitCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateInitCopyWith<$Res> {
  __$$HomeStateInitCopyWithImpl(
      _$HomeStateInit _value, $Res Function(_$HomeStateInit) _then)
      : super(_value, (v) => _then(v as _$HomeStateInit));

  @override
  _$HomeStateInit get _value => super._value as _$HomeStateInit;
}

/// @nodoc

class _$HomeStateInit implements HomeStateInit {
  const _$HomeStateInit();

  @override
  String toString() {
    return 'HomeState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class HomeStateInit implements HomeState {
  const factory HomeStateInit() = _$HomeStateInit;
}

/// @nodoc
abstract class _$$HomeStateLoadingCopyWith<$Res> {
  factory _$$HomeStateLoadingCopyWith(
          _$HomeStateLoading value, $Res Function(_$HomeStateLoading) then) =
      __$$HomeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateLoadingCopyWith<$Res> {
  __$$HomeStateLoadingCopyWithImpl(
      _$HomeStateLoading _value, $Res Function(_$HomeStateLoading) _then)
      : super(_value, (v) => _then(v as _$HomeStateLoading));

  @override
  _$HomeStateLoading get _value => super._value as _$HomeStateLoading;
}

/// @nodoc

class _$HomeStateLoading implements HomeStateLoading {
  const _$HomeStateLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoading implements HomeState {
  const factory HomeStateLoading() = _$HomeStateLoading;
}

/// @nodoc
abstract class _$$HomeStateLoadedCopyWith<$Res> {
  factory _$$HomeStateLoadedCopyWith(
          _$HomeStateLoaded value, $Res Function(_$HomeStateLoaded) then) =
      __$$HomeStateLoadedCopyWithImpl<$Res>;
  $Res call({Transfers transfers});
}

/// @nodoc
class __$$HomeStateLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateLoadedCopyWith<$Res> {
  __$$HomeStateLoadedCopyWithImpl(
      _$HomeStateLoaded _value, $Res Function(_$HomeStateLoaded) _then)
      : super(_value, (v) => _then(v as _$HomeStateLoaded));

  @override
  _$HomeStateLoaded get _value => super._value as _$HomeStateLoaded;

  @override
  $Res call({
    Object? transfers = freezed,
  }) {
    return _then(_$HomeStateLoaded(
      transfers == freezed
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as Transfers,
    ));
  }
}

/// @nodoc

class _$HomeStateLoaded implements HomeStateLoaded {
  const _$HomeStateLoaded(this.transfers);

  @override
  final Transfers transfers;

  @override
  String toString() {
    return 'HomeState.loaded(transfers: $transfers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoaded &&
            const DeepCollectionEquality().equals(other.transfers, transfers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(transfers));

  @JsonKey(ignore: true)
  @override
  _$$HomeStateLoadedCopyWith<_$HomeStateLoaded> get copyWith =>
      __$$HomeStateLoadedCopyWithImpl<_$HomeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return loaded(transfers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return loaded?.call(transfers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(transfers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoaded implements HomeState {
  const factory HomeStateLoaded(final Transfers transfers) = _$HomeStateLoaded;

  Transfers get transfers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomeStateLoadedCopyWith<_$HomeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateErrorCopyWith<$Res> {
  factory _$$HomeStateErrorCopyWith(
          _$HomeStateError value, $Res Function(_$HomeStateError) then) =
      __$$HomeStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$HomeStateErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateErrorCopyWith<$Res> {
  __$$HomeStateErrorCopyWithImpl(
      _$HomeStateError _value, $Res Function(_$HomeStateError) _then)
      : super(_value, (v) => _then(v as _$HomeStateError));

  @override
  _$HomeStateError get _value => super._value as _$HomeStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$HomeStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeStateError implements HomeStateError {
  const _$HomeStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$HomeStateErrorCopyWith<_$HomeStateError> get copyWith =>
      __$$HomeStateErrorCopyWithImpl<_$HomeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeStateError implements HomeState {
  const factory HomeStateError(final String message) = _$HomeStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomeStateErrorCopyWith<_$HomeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateInitSearchStationCopyWith<$Res> {
  factory _$$HomeStateInitSearchStationCopyWith(
          _$HomeStateInitSearchStation value,
          $Res Function(_$HomeStateInitSearchStation) then) =
      __$$HomeStateInitSearchStationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateInitSearchStationCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateInitSearchStationCopyWith<$Res> {
  __$$HomeStateInitSearchStationCopyWithImpl(
      _$HomeStateInitSearchStation _value,
      $Res Function(_$HomeStateInitSearchStation) _then)
      : super(_value, (v) => _then(v as _$HomeStateInitSearchStation));

  @override
  _$HomeStateInitSearchStation get _value =>
      super._value as _$HomeStateInitSearchStation;
}

/// @nodoc

class _$HomeStateInitSearchStation implements HomeStateInitSearchStation {
  const _$HomeStateInitSearchStation();

  @override
  String toString() {
    return 'HomeState.initSearchStation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateInitSearchStation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return initSearchStation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return initSearchStation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (initSearchStation != null) {
      return initSearchStation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return initSearchStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return initSearchStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (initSearchStation != null) {
      return initSearchStation(this);
    }
    return orElse();
  }
}

abstract class HomeStateInitSearchStation implements HomeState {
  const factory HomeStateInitSearchStation() = _$HomeStateInitSearchStation;
}

/// @nodoc
abstract class _$$HomeStateLoadingSearchStationCopyWith<$Res> {
  factory _$$HomeStateLoadingSearchStationCopyWith(
          _$HomeStateLoadingSearchStation value,
          $Res Function(_$HomeStateLoadingSearchStation) then) =
      __$$HomeStateLoadingSearchStationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateLoadingSearchStationCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateLoadingSearchStationCopyWith<$Res> {
  __$$HomeStateLoadingSearchStationCopyWithImpl(
      _$HomeStateLoadingSearchStation _value,
      $Res Function(_$HomeStateLoadingSearchStation) _then)
      : super(_value, (v) => _then(v as _$HomeStateLoadingSearchStation));

  @override
  _$HomeStateLoadingSearchStation get _value =>
      super._value as _$HomeStateLoadingSearchStation;
}

/// @nodoc

class _$HomeStateLoadingSearchStation implements HomeStateLoadingSearchStation {
  const _$HomeStateLoadingSearchStation();

  @override
  String toString() {
    return 'HomeState.loadingSearchStaion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoadingSearchStation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return loadingSearchStaion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return loadingSearchStaion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loadingSearchStaion != null) {
      return loadingSearchStaion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return loadingSearchStaion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return loadingSearchStaion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loadingSearchStaion != null) {
      return loadingSearchStaion(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoadingSearchStation implements HomeState {
  const factory HomeStateLoadingSearchStation() =
      _$HomeStateLoadingSearchStation;
}

/// @nodoc
abstract class _$$HomeStateLoadedSearchStationCopyWith<$Res> {
  factory _$$HomeStateLoadedSearchStationCopyWith(
          _$HomeStateLoadedSearchStation value,
          $Res Function(_$HomeStateLoadedSearchStation) then) =
      __$$HomeStateLoadedSearchStationCopyWithImpl<$Res>;
  $Res call({List<String> list});
}

/// @nodoc
class __$$HomeStateLoadedSearchStationCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateLoadedSearchStationCopyWith<$Res> {
  __$$HomeStateLoadedSearchStationCopyWithImpl(
      _$HomeStateLoadedSearchStation _value,
      $Res Function(_$HomeStateLoadedSearchStation) _then)
      : super(_value, (v) => _then(v as _$HomeStateLoadedSearchStation));

  @override
  _$HomeStateLoadedSearchStation get _value =>
      super._value as _$HomeStateLoadedSearchStation;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$HomeStateLoadedSearchStation(
      list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$HomeStateLoadedSearchStation implements HomeStateLoadedSearchStation {
  const _$HomeStateLoadedSearchStation(final List<String> list) : _list = list;

  final List<String> _list;
  @override
  List<String> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'HomeState.loadedSearchStation(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoadedSearchStation &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$HomeStateLoadedSearchStationCopyWith<_$HomeStateLoadedSearchStation>
      get copyWith => __$$HomeStateLoadedSearchStationCopyWithImpl<
          _$HomeStateLoadedSearchStation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return loadedSearchStation(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return loadedSearchStation?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loadedSearchStation != null) {
      return loadedSearchStation(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return loadedSearchStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return loadedSearchStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loadedSearchStation != null) {
      return loadedSearchStation(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoadedSearchStation implements HomeState {
  const factory HomeStateLoadedSearchStation(final List<String> list) =
      _$HomeStateLoadedSearchStation;

  List<String> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomeStateLoadedSearchStationCopyWith<_$HomeStateLoadedSearchStation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateErrorSearchStationCopyWith<$Res> {
  factory _$$HomeStateErrorSearchStationCopyWith(
          _$HomeStateErrorSearchStation value,
          $Res Function(_$HomeStateErrorSearchStation) then) =
      __$$HomeStateErrorSearchStationCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$HomeStateErrorSearchStationCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateErrorSearchStationCopyWith<$Res> {
  __$$HomeStateErrorSearchStationCopyWithImpl(
      _$HomeStateErrorSearchStation _value,
      $Res Function(_$HomeStateErrorSearchStation) _then)
      : super(_value, (v) => _then(v as _$HomeStateErrorSearchStation));

  @override
  _$HomeStateErrorSearchStation get _value =>
      super._value as _$HomeStateErrorSearchStation;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$HomeStateErrorSearchStation(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeStateErrorSearchStation implements HomeStateErrorSearchStation {
  const _$HomeStateErrorSearchStation(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.errorSearchStation(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateErrorSearchStation &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$HomeStateErrorSearchStationCopyWith<_$HomeStateErrorSearchStation>
      get copyWith => __$$HomeStateErrorSearchStationCopyWithImpl<
          _$HomeStateErrorSearchStation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return errorSearchStation(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return errorSearchStation?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (errorSearchStation != null) {
      return errorSearchStation(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return errorSearchStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return errorSearchStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (errorSearchStation != null) {
      return errorSearchStation(this);
    }
    return orElse();
  }
}

abstract class HomeStateErrorSearchStation implements HomeState {
  const factory HomeStateErrorSearchStation(final String message) =
      _$HomeStateErrorSearchStation;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomeStateErrorSearchStationCopyWith<_$HomeStateErrorSearchStation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateInitGetEventsAndMembersCopyWith<$Res> {
  factory _$$HomeStateInitGetEventsAndMembersCopyWith(
          _$HomeStateInitGetEventsAndMembers value,
          $Res Function(_$HomeStateInitGetEventsAndMembers) then) =
      __$$HomeStateInitGetEventsAndMembersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateInitGetEventsAndMembersCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateInitGetEventsAndMembersCopyWith<$Res> {
  __$$HomeStateInitGetEventsAndMembersCopyWithImpl(
      _$HomeStateInitGetEventsAndMembers _value,
      $Res Function(_$HomeStateInitGetEventsAndMembers) _then)
      : super(_value, (v) => _then(v as _$HomeStateInitGetEventsAndMembers));

  @override
  _$HomeStateInitGetEventsAndMembers get _value =>
      super._value as _$HomeStateInitGetEventsAndMembers;
}

/// @nodoc

class _$HomeStateInitGetEventsAndMembers
    implements HomeStateInitGetEventsAndMembers {
  const _$HomeStateInitGetEventsAndMembers();

  @override
  String toString() {
    return 'HomeState.initGetEventsAndMembers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateInitGetEventsAndMembers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return initGetEventsAndMembers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return initGetEventsAndMembers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (initGetEventsAndMembers != null) {
      return initGetEventsAndMembers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return initGetEventsAndMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return initGetEventsAndMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (initGetEventsAndMembers != null) {
      return initGetEventsAndMembers(this);
    }
    return orElse();
  }
}

abstract class HomeStateInitGetEventsAndMembers implements HomeState {
  const factory HomeStateInitGetEventsAndMembers() =
      _$HomeStateInitGetEventsAndMembers;
}

/// @nodoc
abstract class _$$HomeStateLoadingGetEventsAndMembersCopyWith<$Res> {
  factory _$$HomeStateLoadingGetEventsAndMembersCopyWith(
          _$HomeStateLoadingGetEventsAndMembers value,
          $Res Function(_$HomeStateLoadingGetEventsAndMembers) then) =
      __$$HomeStateLoadingGetEventsAndMembersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateLoadingGetEventsAndMembersCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateLoadingGetEventsAndMembersCopyWith<$Res> {
  __$$HomeStateLoadingGetEventsAndMembersCopyWithImpl(
      _$HomeStateLoadingGetEventsAndMembers _value,
      $Res Function(_$HomeStateLoadingGetEventsAndMembers) _then)
      : super(_value, (v) => _then(v as _$HomeStateLoadingGetEventsAndMembers));

  @override
  _$HomeStateLoadingGetEventsAndMembers get _value =>
      super._value as _$HomeStateLoadingGetEventsAndMembers;
}

/// @nodoc

class _$HomeStateLoadingGetEventsAndMembers
    implements HomeStateLoadingGetEventsAndMembers {
  const _$HomeStateLoadingGetEventsAndMembers();

  @override
  String toString() {
    return 'HomeState.loadingGetEventsAndMembers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoadingGetEventsAndMembers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return loadingGetEventsAndMembers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return loadingGetEventsAndMembers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loadingGetEventsAndMembers != null) {
      return loadingGetEventsAndMembers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return loadingGetEventsAndMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return loadingGetEventsAndMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loadingGetEventsAndMembers != null) {
      return loadingGetEventsAndMembers(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoadingGetEventsAndMembers implements HomeState {
  const factory HomeStateLoadingGetEventsAndMembers() =
      _$HomeStateLoadingGetEventsAndMembers;
}

/// @nodoc
abstract class _$$HomeStateLoadedGetEventsAndMembersCopyWith<$Res> {
  factory _$$HomeStateLoadedGetEventsAndMembersCopyWith(
          _$HomeStateLoadedGetEventsAndMembers value,
          $Res Function(_$HomeStateLoadedGetEventsAndMembers) then) =
      __$$HomeStateLoadedGetEventsAndMembersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateLoadedGetEventsAndMembersCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeStateLoadedGetEventsAndMembersCopyWith<$Res> {
  __$$HomeStateLoadedGetEventsAndMembersCopyWithImpl(
      _$HomeStateLoadedGetEventsAndMembers _value,
      $Res Function(_$HomeStateLoadedGetEventsAndMembers) _then)
      : super(_value, (v) => _then(v as _$HomeStateLoadedGetEventsAndMembers));

  @override
  _$HomeStateLoadedGetEventsAndMembers get _value =>
      super._value as _$HomeStateLoadedGetEventsAndMembers;
}

/// @nodoc

class _$HomeStateLoadedGetEventsAndMembers
    implements HomeStateLoadedGetEventsAndMembers {
  const _$HomeStateLoadedGetEventsAndMembers();

  @override
  String toString() {
    return 'HomeState.loadedGetEventsAndMembers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoadedGetEventsAndMembers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
    required TResult Function() initSearchStation,
    required TResult Function() loadingSearchStaion,
    required TResult Function(List<String> list) loadedSearchStation,
    required TResult Function(String message) errorSearchStation,
    required TResult Function() initGetEventsAndMembers,
    required TResult Function() loadingGetEventsAndMembers,
    required TResult Function() loadedGetEventsAndMembers,
  }) {
    return loadedGetEventsAndMembers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
  }) {
    return loadedGetEventsAndMembers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    TResult Function()? initSearchStation,
    TResult Function()? loadingSearchStaion,
    TResult Function(List<String> list)? loadedSearchStation,
    TResult Function(String message)? errorSearchStation,
    TResult Function()? initGetEventsAndMembers,
    TResult Function()? loadingGetEventsAndMembers,
    TResult Function()? loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loadedGetEventsAndMembers != null) {
      return loadedGetEventsAndMembers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateInitSearchStation value)
        initSearchStation,
    required TResult Function(HomeStateLoadingSearchStation value)
        loadingSearchStaion,
    required TResult Function(HomeStateLoadedSearchStation value)
        loadedSearchStation,
    required TResult Function(HomeStateErrorSearchStation value)
        errorSearchStation,
    required TResult Function(HomeStateInitGetEventsAndMembers value)
        initGetEventsAndMembers,
    required TResult Function(HomeStateLoadingGetEventsAndMembers value)
        loadingGetEventsAndMembers,
    required TResult Function(HomeStateLoadedGetEventsAndMembers value)
        loadedGetEventsAndMembers,
  }) {
    return loadedGetEventsAndMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
  }) {
    return loadedGetEventsAndMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateInitSearchStation value)? initSearchStation,
    TResult Function(HomeStateLoadingSearchStation value)? loadingSearchStaion,
    TResult Function(HomeStateLoadedSearchStation value)? loadedSearchStation,
    TResult Function(HomeStateErrorSearchStation value)? errorSearchStation,
    TResult Function(HomeStateInitGetEventsAndMembers value)?
        initGetEventsAndMembers,
    TResult Function(HomeStateLoadingGetEventsAndMembers value)?
        loadingGetEventsAndMembers,
    TResult Function(HomeStateLoadedGetEventsAndMembers value)?
        loadedGetEventsAndMembers,
    required TResult orElse(),
  }) {
    if (loadedGetEventsAndMembers != null) {
      return loadedGetEventsAndMembers(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoadedGetEventsAndMembers implements HomeState {
  const factory HomeStateLoadedGetEventsAndMembers() =
      _$HomeStateLoadedGetEventsAndMembers;
}
