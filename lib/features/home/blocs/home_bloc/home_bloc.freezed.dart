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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        searchTransfers,
    TResult Function(String stringPart)? searchStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        searchTransfers,
    TResult Function(String stringPart)? searchStation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventSearchTransfers value) searchTransfers,
    required TResult Function(HomeEventSearchStation value) searchStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventSearchTransfers value)? searchTransfers,
    TResult Function(HomeEventSearchStation value)? searchStation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSearchTransfers value)? searchTransfers,
    TResult Function(HomeEventSearchStation value)? searchStation,
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
abstract class _$$HomeEventSearchTransfersCopyWith<$Res> {
  factory _$$HomeEventSearchTransfersCopyWith(_$HomeEventSearchTransfers value,
          $Res Function(_$HomeEventSearchTransfers) then) =
      __$$HomeEventSearchTransfersCopyWithImpl<$Res>;
  $Res call({String startStation, String endStation, String date, String time});
}

/// @nodoc
class __$$HomeEventSearchTransfersCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$HomeEventSearchTransfersCopyWith<$Res> {
  __$$HomeEventSearchTransfersCopyWithImpl(_$HomeEventSearchTransfers _value,
      $Res Function(_$HomeEventSearchTransfers) _then)
      : super(_value, (v) => _then(v as _$HomeEventSearchTransfers));

  @override
  _$HomeEventSearchTransfers get _value =>
      super._value as _$HomeEventSearchTransfers;

  @override
  $Res call({
    Object? startStation = freezed,
    Object? endStation = freezed,
    Object? date = freezed,
    Object? time = freezed,
  }) {
    return _then(_$HomeEventSearchTransfers(
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

class _$HomeEventSearchTransfers implements HomeEventSearchTransfers {
  const _$HomeEventSearchTransfers(
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
            other is _$HomeEventSearchTransfers &&
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
  _$$HomeEventSearchTransfersCopyWith<_$HomeEventSearchTransfers>
      get copyWith =>
          __$$HomeEventSearchTransfersCopyWithImpl<_$HomeEventSearchTransfers>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String startStation, String endStation, String date, String time)
        searchTransfers,
    required TResult Function(String stringPart) searchStation,
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
    required TResult Function(HomeEventSearchTransfers value) searchTransfers,
    required TResult Function(HomeEventSearchStation value) searchStation,
  }) {
    return searchTransfers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventSearchTransfers value)? searchTransfers,
    TResult Function(HomeEventSearchStation value)? searchStation,
  }) {
    return searchTransfers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSearchTransfers value)? searchTransfers,
    TResult Function(HomeEventSearchStation value)? searchStation,
    required TResult orElse(),
  }) {
    if (searchTransfers != null) {
      return searchTransfers(this);
    }
    return orElse();
  }
}

abstract class HomeEventSearchTransfers implements HomeEvent {
  const factory HomeEventSearchTransfers(
      final String startStation,
      final String endStation,
      final String date,
      final String time) = _$HomeEventSearchTransfers;

  String get startStation => throw _privateConstructorUsedError;
  String get endStation => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomeEventSearchTransfersCopyWith<_$HomeEventSearchTransfers>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventSearchStationCopyWith<$Res> {
  factory _$$HomeEventSearchStationCopyWith(_$HomeEventSearchStation value,
          $Res Function(_$HomeEventSearchStation) then) =
      __$$HomeEventSearchStationCopyWithImpl<$Res>;
  $Res call({String stringPart});
}

/// @nodoc
class __$$HomeEventSearchStationCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$HomeEventSearchStationCopyWith<$Res> {
  __$$HomeEventSearchStationCopyWithImpl(_$HomeEventSearchStation _value,
      $Res Function(_$HomeEventSearchStation) _then)
      : super(_value, (v) => _then(v as _$HomeEventSearchStation));

  @override
  _$HomeEventSearchStation get _value =>
      super._value as _$HomeEventSearchStation;

  @override
  $Res call({
    Object? stringPart = freezed,
  }) {
    return _then(_$HomeEventSearchStation(
      stringPart == freezed
          ? _value.stringPart
          : stringPart // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeEventSearchStation implements HomeEventSearchStation {
  const _$HomeEventSearchStation(this.stringPart);

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
            other is _$HomeEventSearchStation &&
            const DeepCollectionEquality()
                .equals(other.stringPart, stringPart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stringPart));

  @JsonKey(ignore: true)
  @override
  _$$HomeEventSearchStationCopyWith<_$HomeEventSearchStation> get copyWith =>
      __$$HomeEventSearchStationCopyWithImpl<_$HomeEventSearchStation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String startStation, String endStation, String date, String time)
        searchTransfers,
    required TResult Function(String stringPart) searchStation,
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
    required TResult Function(HomeEventSearchTransfers value) searchTransfers,
    required TResult Function(HomeEventSearchStation value) searchStation,
  }) {
    return searchStation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventSearchTransfers value)? searchTransfers,
    TResult Function(HomeEventSearchStation value)? searchStation,
  }) {
    return searchStation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSearchTransfers value)? searchTransfers,
    TResult Function(HomeEventSearchStation value)? searchStation,
    required TResult orElse(),
  }) {
    if (searchStation != null) {
      return searchStation(this);
    }
    return orElse();
  }
}

abstract class HomeEventSearchStation implements HomeEvent {
  const factory HomeEventSearchStation(final String stringPart) =
      _$HomeEventSearchStation;

  String get stringPart => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomeEventSearchStationCopyWith<_$HomeEventSearchStation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Transfers transfers) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Transfers transfers)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
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
