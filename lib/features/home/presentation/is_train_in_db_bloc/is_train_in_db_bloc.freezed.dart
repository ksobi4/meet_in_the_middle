// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'is_train_in_db_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IsTrainInDbEvent {
  Train get train => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Train train) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Train train)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Train train)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsTrainInDbCheck value) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainInDbCheck value)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainInDbCheck value)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsTrainInDbEventCopyWith<IsTrainInDbEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsTrainInDbEventCopyWith<$Res> {
  factory $IsTrainInDbEventCopyWith(
          IsTrainInDbEvent value, $Res Function(IsTrainInDbEvent) then) =
      _$IsTrainInDbEventCopyWithImpl<$Res>;
  $Res call({Train train});
}

/// @nodoc
class _$IsTrainInDbEventCopyWithImpl<$Res>
    implements $IsTrainInDbEventCopyWith<$Res> {
  _$IsTrainInDbEventCopyWithImpl(this._value, this._then);

  final IsTrainInDbEvent _value;
  // ignore: unused_field
  final $Res Function(IsTrainInDbEvent) _then;

  @override
  $Res call({
    Object? train = freezed,
  }) {
    return _then(_value.copyWith(
      train: train == freezed
          ? _value.train
          : train // ignore: cast_nullable_to_non_nullable
              as Train,
    ));
  }
}

/// @nodoc
abstract class _$$IsTrainInDbCheckCopyWith<$Res>
    implements $IsTrainInDbEventCopyWith<$Res> {
  factory _$$IsTrainInDbCheckCopyWith(
          _$IsTrainInDbCheck value, $Res Function(_$IsTrainInDbCheck) then) =
      __$$IsTrainInDbCheckCopyWithImpl<$Res>;
  @override
  $Res call({Train train});
}

/// @nodoc
class __$$IsTrainInDbCheckCopyWithImpl<$Res>
    extends _$IsTrainInDbEventCopyWithImpl<$Res>
    implements _$$IsTrainInDbCheckCopyWith<$Res> {
  __$$IsTrainInDbCheckCopyWithImpl(
      _$IsTrainInDbCheck _value, $Res Function(_$IsTrainInDbCheck) _then)
      : super(_value, (v) => _then(v as _$IsTrainInDbCheck));

  @override
  _$IsTrainInDbCheck get _value => super._value as _$IsTrainInDbCheck;

  @override
  $Res call({
    Object? train = freezed,
  }) {
    return _then(_$IsTrainInDbCheck(
      train == freezed
          ? _value.train
          : train // ignore: cast_nullable_to_non_nullable
              as Train,
    ));
  }
}

/// @nodoc

class _$IsTrainInDbCheck implements IsTrainInDbCheck {
  const _$IsTrainInDbCheck(this.train);

  @override
  final Train train;

  @override
  String toString() {
    return 'IsTrainInDbEvent.check(train: $train)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsTrainInDbCheck &&
            const DeepCollectionEquality().equals(other.train, train));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(train));

  @JsonKey(ignore: true)
  @override
  _$$IsTrainInDbCheckCopyWith<_$IsTrainInDbCheck> get copyWith =>
      __$$IsTrainInDbCheckCopyWithImpl<_$IsTrainInDbCheck>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Train train) check,
  }) {
    return check(train);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Train train)? check,
  }) {
    return check?.call(train);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Train train)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(train);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsTrainInDbCheck value) check,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainInDbCheck value)? check,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainInDbCheck value)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class IsTrainInDbCheck implements IsTrainInDbEvent {
  const factory IsTrainInDbCheck(final Train train) = _$IsTrainInDbCheck;

  @override
  Train get train => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$IsTrainInDbCheckCopyWith<_$IsTrainInDbCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IsTrainInDbState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsTrainInDbStateInit value) init,
    required TResult Function(IsTrainInDbStateLoading value) loading,
    required TResult Function(IsTrainInDbStateLoaded value) loaded,
    required TResult Function(IsTrainInDbStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainInDbStateInit value)? init,
    TResult Function(IsTrainInDbStateLoading value)? loading,
    TResult Function(IsTrainInDbStateLoaded value)? loaded,
    TResult Function(IsTrainInDbStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainInDbStateInit value)? init,
    TResult Function(IsTrainInDbStateLoading value)? loading,
    TResult Function(IsTrainInDbStateLoaded value)? loaded,
    TResult Function(IsTrainInDbStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsTrainInDbStateCopyWith<$Res> {
  factory $IsTrainInDbStateCopyWith(
          IsTrainInDbState value, $Res Function(IsTrainInDbState) then) =
      _$IsTrainInDbStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsTrainInDbStateCopyWithImpl<$Res>
    implements $IsTrainInDbStateCopyWith<$Res> {
  _$IsTrainInDbStateCopyWithImpl(this._value, this._then);

  final IsTrainInDbState _value;
  // ignore: unused_field
  final $Res Function(IsTrainInDbState) _then;
}

/// @nodoc
abstract class _$$IsTrainInDbStateInitCopyWith<$Res> {
  factory _$$IsTrainInDbStateInitCopyWith(_$IsTrainInDbStateInit value,
          $Res Function(_$IsTrainInDbStateInit) then) =
      __$$IsTrainInDbStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsTrainInDbStateInitCopyWithImpl<$Res>
    extends _$IsTrainInDbStateCopyWithImpl<$Res>
    implements _$$IsTrainInDbStateInitCopyWith<$Res> {
  __$$IsTrainInDbStateInitCopyWithImpl(_$IsTrainInDbStateInit _value,
      $Res Function(_$IsTrainInDbStateInit) _then)
      : super(_value, (v) => _then(v as _$IsTrainInDbStateInit));

  @override
  _$IsTrainInDbStateInit get _value => super._value as _$IsTrainInDbStateInit;
}

/// @nodoc

class _$IsTrainInDbStateInit implements IsTrainInDbStateInit {
  const _$IsTrainInDbStateInit();

  @override
  String toString() {
    return 'IsTrainInDbState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsTrainInDbStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(IsTrainInDbStateInit value) init,
    required TResult Function(IsTrainInDbStateLoading value) loading,
    required TResult Function(IsTrainInDbStateLoaded value) loaded,
    required TResult Function(IsTrainInDbStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainInDbStateInit value)? init,
    TResult Function(IsTrainInDbStateLoading value)? loading,
    TResult Function(IsTrainInDbStateLoaded value)? loaded,
    TResult Function(IsTrainInDbStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainInDbStateInit value)? init,
    TResult Function(IsTrainInDbStateLoading value)? loading,
    TResult Function(IsTrainInDbStateLoaded value)? loaded,
    TResult Function(IsTrainInDbStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class IsTrainInDbStateInit implements IsTrainInDbState {
  const factory IsTrainInDbStateInit() = _$IsTrainInDbStateInit;
}

/// @nodoc
abstract class _$$IsTrainInDbStateLoadingCopyWith<$Res> {
  factory _$$IsTrainInDbStateLoadingCopyWith(_$IsTrainInDbStateLoading value,
          $Res Function(_$IsTrainInDbStateLoading) then) =
      __$$IsTrainInDbStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsTrainInDbStateLoadingCopyWithImpl<$Res>
    extends _$IsTrainInDbStateCopyWithImpl<$Res>
    implements _$$IsTrainInDbStateLoadingCopyWith<$Res> {
  __$$IsTrainInDbStateLoadingCopyWithImpl(_$IsTrainInDbStateLoading _value,
      $Res Function(_$IsTrainInDbStateLoading) _then)
      : super(_value, (v) => _then(v as _$IsTrainInDbStateLoading));

  @override
  _$IsTrainInDbStateLoading get _value =>
      super._value as _$IsTrainInDbStateLoading;
}

/// @nodoc

class _$IsTrainInDbStateLoading implements IsTrainInDbStateLoading {
  const _$IsTrainInDbStateLoading();

  @override
  String toString() {
    return 'IsTrainInDbState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsTrainInDbStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(IsTrainInDbStateInit value) init,
    required TResult Function(IsTrainInDbStateLoading value) loading,
    required TResult Function(IsTrainInDbStateLoaded value) loaded,
    required TResult Function(IsTrainInDbStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainInDbStateInit value)? init,
    TResult Function(IsTrainInDbStateLoading value)? loading,
    TResult Function(IsTrainInDbStateLoaded value)? loaded,
    TResult Function(IsTrainInDbStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainInDbStateInit value)? init,
    TResult Function(IsTrainInDbStateLoading value)? loading,
    TResult Function(IsTrainInDbStateLoaded value)? loaded,
    TResult Function(IsTrainInDbStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class IsTrainInDbStateLoading implements IsTrainInDbState {
  const factory IsTrainInDbStateLoading() = _$IsTrainInDbStateLoading;
}

/// @nodoc
abstract class _$$IsTrainInDbStateLoadedCopyWith<$Res> {
  factory _$$IsTrainInDbStateLoadedCopyWith(_$IsTrainInDbStateLoaded value,
          $Res Function(_$IsTrainInDbStateLoaded) then) =
      __$$IsTrainInDbStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsTrainInDbStateLoadedCopyWithImpl<$Res>
    extends _$IsTrainInDbStateCopyWithImpl<$Res>
    implements _$$IsTrainInDbStateLoadedCopyWith<$Res> {
  __$$IsTrainInDbStateLoadedCopyWithImpl(_$IsTrainInDbStateLoaded _value,
      $Res Function(_$IsTrainInDbStateLoaded) _then)
      : super(_value, (v) => _then(v as _$IsTrainInDbStateLoaded));

  @override
  _$IsTrainInDbStateLoaded get _value =>
      super._value as _$IsTrainInDbStateLoaded;
}

/// @nodoc

class _$IsTrainInDbStateLoaded implements IsTrainInDbStateLoaded {
  const _$IsTrainInDbStateLoaded();

  @override
  String toString() {
    return 'IsTrainInDbState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsTrainInDbStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsTrainInDbStateInit value) init,
    required TResult Function(IsTrainInDbStateLoading value) loading,
    required TResult Function(IsTrainInDbStateLoaded value) loaded,
    required TResult Function(IsTrainInDbStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainInDbStateInit value)? init,
    TResult Function(IsTrainInDbStateLoading value)? loading,
    TResult Function(IsTrainInDbStateLoaded value)? loaded,
    TResult Function(IsTrainInDbStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainInDbStateInit value)? init,
    TResult Function(IsTrainInDbStateLoading value)? loading,
    TResult Function(IsTrainInDbStateLoaded value)? loaded,
    TResult Function(IsTrainInDbStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class IsTrainInDbStateLoaded implements IsTrainInDbState {
  const factory IsTrainInDbStateLoaded() = _$IsTrainInDbStateLoaded;
}

/// @nodoc
abstract class _$$IsTrainInDbStateErrorCopyWith<$Res> {
  factory _$$IsTrainInDbStateErrorCopyWith(_$IsTrainInDbStateError value,
          $Res Function(_$IsTrainInDbStateError) then) =
      __$$IsTrainInDbStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$IsTrainInDbStateErrorCopyWithImpl<$Res>
    extends _$IsTrainInDbStateCopyWithImpl<$Res>
    implements _$$IsTrainInDbStateErrorCopyWith<$Res> {
  __$$IsTrainInDbStateErrorCopyWithImpl(_$IsTrainInDbStateError _value,
      $Res Function(_$IsTrainInDbStateError) _then)
      : super(_value, (v) => _then(v as _$IsTrainInDbStateError));

  @override
  _$IsTrainInDbStateError get _value => super._value as _$IsTrainInDbStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$IsTrainInDbStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsTrainInDbStateError implements IsTrainInDbStateError {
  const _$IsTrainInDbStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'IsTrainInDbState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsTrainInDbStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$IsTrainInDbStateErrorCopyWith<_$IsTrainInDbStateError> get copyWith =>
      __$$IsTrainInDbStateErrorCopyWithImpl<_$IsTrainInDbStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(IsTrainInDbStateInit value) init,
    required TResult Function(IsTrainInDbStateLoading value) loading,
    required TResult Function(IsTrainInDbStateLoaded value) loaded,
    required TResult Function(IsTrainInDbStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainInDbStateInit value)? init,
    TResult Function(IsTrainInDbStateLoading value)? loading,
    TResult Function(IsTrainInDbStateLoaded value)? loaded,
    TResult Function(IsTrainInDbStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainInDbStateInit value)? init,
    TResult Function(IsTrainInDbStateLoading value)? loading,
    TResult Function(IsTrainInDbStateLoaded value)? loaded,
    TResult Function(IsTrainInDbStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class IsTrainInDbStateError implements IsTrainInDbState {
  const factory IsTrainInDbStateError(final String message) =
      _$IsTrainInDbStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$IsTrainInDbStateErrorCopyWith<_$IsTrainInDbStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
