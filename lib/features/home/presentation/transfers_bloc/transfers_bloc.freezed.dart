// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transfers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransfersEvent {
  String get startStation => throw _privateConstructorUsedError;
  String get endStation => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String startStation, String endStation, String date, String time)
        get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransfersGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransfersGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransfersGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransfersEventCopyWith<TransfersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransfersEventCopyWith<$Res> {
  factory $TransfersEventCopyWith(
          TransfersEvent value, $Res Function(TransfersEvent) then) =
      _$TransfersEventCopyWithImpl<$Res>;
  $Res call({String startStation, String endStation, String date, String time});
}

/// @nodoc
class _$TransfersEventCopyWithImpl<$Res>
    implements $TransfersEventCopyWith<$Res> {
  _$TransfersEventCopyWithImpl(this._value, this._then);

  final TransfersEvent _value;
  // ignore: unused_field
  final $Res Function(TransfersEvent) _then;

  @override
  $Res call({
    Object? startStation = freezed,
    Object? endStation = freezed,
    Object? date = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      startStation: startStation == freezed
          ? _value.startStation
          : startStation // ignore: cast_nullable_to_non_nullable
              as String,
      endStation: endStation == freezed
          ? _value.endStation
          : endStation // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$TransfersGetCopyWith<$Res>
    implements $TransfersEventCopyWith<$Res> {
  factory _$$TransfersGetCopyWith(
          _$TransfersGet value, $Res Function(_$TransfersGet) then) =
      __$$TransfersGetCopyWithImpl<$Res>;
  @override
  $Res call({String startStation, String endStation, String date, String time});
}

/// @nodoc
class __$$TransfersGetCopyWithImpl<$Res>
    extends _$TransfersEventCopyWithImpl<$Res>
    implements _$$TransfersGetCopyWith<$Res> {
  __$$TransfersGetCopyWithImpl(
      _$TransfersGet _value, $Res Function(_$TransfersGet) _then)
      : super(_value, (v) => _then(v as _$TransfersGet));

  @override
  _$TransfersGet get _value => super._value as _$TransfersGet;

  @override
  $Res call({
    Object? startStation = freezed,
    Object? endStation = freezed,
    Object? date = freezed,
    Object? time = freezed,
  }) {
    return _then(_$TransfersGet(
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

class _$TransfersGet implements TransfersGet {
  const _$TransfersGet(
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
    return 'TransfersEvent.get(startStation: $startStation, endStation: $endStation, date: $date, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransfersGet &&
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
  _$$TransfersGetCopyWith<_$TransfersGet> get copyWith =>
      __$$TransfersGetCopyWithImpl<_$TransfersGet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String startStation, String endStation, String date, String time)
        get,
  }) {
    return get(startStation, endStation, date, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        get,
  }) {
    return get?.call(startStation, endStation, date, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String startStation, String endStation, String date, String time)?
        get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(startStation, endStation, date, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransfersGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransfersGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransfersGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class TransfersGet implements TransfersEvent {
  const factory TransfersGet(final String startStation, final String endStation,
      final String date, final String time) = _$TransfersGet;

  @override
  String get startStation => throw _privateConstructorUsedError;
  @override
  String get endStation => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  String get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$TransfersGetCopyWith<_$TransfersGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransfersState {
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
    required TResult Function(TransfersStateInit value) init,
    required TResult Function(TransfersStateLoading value) loading,
    required TResult Function(TransfersStateLoaded value) loaded,
    required TResult Function(TransfersStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransfersStateInit value)? init,
    TResult Function(TransfersStateLoading value)? loading,
    TResult Function(TransfersStateLoaded value)? loaded,
    TResult Function(TransfersStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransfersStateInit value)? init,
    TResult Function(TransfersStateLoading value)? loading,
    TResult Function(TransfersStateLoaded value)? loaded,
    TResult Function(TransfersStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransfersStateCopyWith<$Res> {
  factory $TransfersStateCopyWith(
          TransfersState value, $Res Function(TransfersState) then) =
      _$TransfersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransfersStateCopyWithImpl<$Res>
    implements $TransfersStateCopyWith<$Res> {
  _$TransfersStateCopyWithImpl(this._value, this._then);

  final TransfersState _value;
  // ignore: unused_field
  final $Res Function(TransfersState) _then;
}

/// @nodoc
abstract class _$$TransfersStateInitCopyWith<$Res> {
  factory _$$TransfersStateInitCopyWith(_$TransfersStateInit value,
          $Res Function(_$TransfersStateInit) then) =
      __$$TransfersStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransfersStateInitCopyWithImpl<$Res>
    extends _$TransfersStateCopyWithImpl<$Res>
    implements _$$TransfersStateInitCopyWith<$Res> {
  __$$TransfersStateInitCopyWithImpl(
      _$TransfersStateInit _value, $Res Function(_$TransfersStateInit) _then)
      : super(_value, (v) => _then(v as _$TransfersStateInit));

  @override
  _$TransfersStateInit get _value => super._value as _$TransfersStateInit;
}

/// @nodoc

class _$TransfersStateInit implements TransfersStateInit {
  const _$TransfersStateInit();

  @override
  String toString() {
    return 'TransfersState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransfersStateInit);
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
    required TResult Function(TransfersStateInit value) init,
    required TResult Function(TransfersStateLoading value) loading,
    required TResult Function(TransfersStateLoaded value) loaded,
    required TResult Function(TransfersStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransfersStateInit value)? init,
    TResult Function(TransfersStateLoading value)? loading,
    TResult Function(TransfersStateLoaded value)? loaded,
    TResult Function(TransfersStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransfersStateInit value)? init,
    TResult Function(TransfersStateLoading value)? loading,
    TResult Function(TransfersStateLoaded value)? loaded,
    TResult Function(TransfersStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TransfersStateInit implements TransfersState {
  const factory TransfersStateInit() = _$TransfersStateInit;
}

/// @nodoc
abstract class _$$TransfersStateLoadingCopyWith<$Res> {
  factory _$$TransfersStateLoadingCopyWith(_$TransfersStateLoading value,
          $Res Function(_$TransfersStateLoading) then) =
      __$$TransfersStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransfersStateLoadingCopyWithImpl<$Res>
    extends _$TransfersStateCopyWithImpl<$Res>
    implements _$$TransfersStateLoadingCopyWith<$Res> {
  __$$TransfersStateLoadingCopyWithImpl(_$TransfersStateLoading _value,
      $Res Function(_$TransfersStateLoading) _then)
      : super(_value, (v) => _then(v as _$TransfersStateLoading));

  @override
  _$TransfersStateLoading get _value => super._value as _$TransfersStateLoading;
}

/// @nodoc

class _$TransfersStateLoading implements TransfersStateLoading {
  const _$TransfersStateLoading();

  @override
  String toString() {
    return 'TransfersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransfersStateLoading);
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
    required TResult Function(TransfersStateInit value) init,
    required TResult Function(TransfersStateLoading value) loading,
    required TResult Function(TransfersStateLoaded value) loaded,
    required TResult Function(TransfersStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransfersStateInit value)? init,
    TResult Function(TransfersStateLoading value)? loading,
    TResult Function(TransfersStateLoaded value)? loaded,
    TResult Function(TransfersStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransfersStateInit value)? init,
    TResult Function(TransfersStateLoading value)? loading,
    TResult Function(TransfersStateLoaded value)? loaded,
    TResult Function(TransfersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransfersStateLoading implements TransfersState {
  const factory TransfersStateLoading() = _$TransfersStateLoading;
}

/// @nodoc
abstract class _$$TransfersStateLoadedCopyWith<$Res> {
  factory _$$TransfersStateLoadedCopyWith(_$TransfersStateLoaded value,
          $Res Function(_$TransfersStateLoaded) then) =
      __$$TransfersStateLoadedCopyWithImpl<$Res>;
  $Res call({Transfers transfers});
}

/// @nodoc
class __$$TransfersStateLoadedCopyWithImpl<$Res>
    extends _$TransfersStateCopyWithImpl<$Res>
    implements _$$TransfersStateLoadedCopyWith<$Res> {
  __$$TransfersStateLoadedCopyWithImpl(_$TransfersStateLoaded _value,
      $Res Function(_$TransfersStateLoaded) _then)
      : super(_value, (v) => _then(v as _$TransfersStateLoaded));

  @override
  _$TransfersStateLoaded get _value => super._value as _$TransfersStateLoaded;

  @override
  $Res call({
    Object? transfers = freezed,
  }) {
    return _then(_$TransfersStateLoaded(
      transfers == freezed
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as Transfers,
    ));
  }
}

/// @nodoc

class _$TransfersStateLoaded implements TransfersStateLoaded {
  const _$TransfersStateLoaded(this.transfers);

  @override
  final Transfers transfers;

  @override
  String toString() {
    return 'TransfersState.loaded(transfers: $transfers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransfersStateLoaded &&
            const DeepCollectionEquality().equals(other.transfers, transfers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(transfers));

  @JsonKey(ignore: true)
  @override
  _$$TransfersStateLoadedCopyWith<_$TransfersStateLoaded> get copyWith =>
      __$$TransfersStateLoadedCopyWithImpl<_$TransfersStateLoaded>(
          this, _$identity);

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
    required TResult Function(TransfersStateInit value) init,
    required TResult Function(TransfersStateLoading value) loading,
    required TResult Function(TransfersStateLoaded value) loaded,
    required TResult Function(TransfersStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransfersStateInit value)? init,
    TResult Function(TransfersStateLoading value)? loading,
    TResult Function(TransfersStateLoaded value)? loaded,
    TResult Function(TransfersStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransfersStateInit value)? init,
    TResult Function(TransfersStateLoading value)? loading,
    TResult Function(TransfersStateLoaded value)? loaded,
    TResult Function(TransfersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TransfersStateLoaded implements TransfersState {
  const factory TransfersStateLoaded(final Transfers transfers) =
      _$TransfersStateLoaded;

  Transfers get transfers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TransfersStateLoadedCopyWith<_$TransfersStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransfersStateErrorCopyWith<$Res> {
  factory _$$TransfersStateErrorCopyWith(_$TransfersStateError value,
          $Res Function(_$TransfersStateError) then) =
      __$$TransfersStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$TransfersStateErrorCopyWithImpl<$Res>
    extends _$TransfersStateCopyWithImpl<$Res>
    implements _$$TransfersStateErrorCopyWith<$Res> {
  __$$TransfersStateErrorCopyWithImpl(
      _$TransfersStateError _value, $Res Function(_$TransfersStateError) _then)
      : super(_value, (v) => _then(v as _$TransfersStateError));

  @override
  _$TransfersStateError get _value => super._value as _$TransfersStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TransfersStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransfersStateError implements TransfersStateError {
  const _$TransfersStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TransfersState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransfersStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$TransfersStateErrorCopyWith<_$TransfersStateError> get copyWith =>
      __$$TransfersStateErrorCopyWithImpl<_$TransfersStateError>(
          this, _$identity);

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
    required TResult Function(TransfersStateInit value) init,
    required TResult Function(TransfersStateLoading value) loading,
    required TResult Function(TransfersStateLoaded value) loaded,
    required TResult Function(TransfersStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TransfersStateInit value)? init,
    TResult Function(TransfersStateLoading value)? loading,
    TResult Function(TransfersStateLoaded value)? loaded,
    TResult Function(TransfersStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransfersStateInit value)? init,
    TResult Function(TransfersStateLoading value)? loading,
    TResult Function(TransfersStateLoaded value)? loaded,
    TResult Function(TransfersStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TransfersStateError implements TransfersState {
  const factory TransfersStateError(final String message) =
      _$TransfersStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TransfersStateErrorCopyWith<_$TransfersStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
