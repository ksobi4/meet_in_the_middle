// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'is_train_member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IsTrainMemberEvent {
  String get userId => throw _privateConstructorUsedError;
  Train get train => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, Train train) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId, Train train)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, Train train)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsTrainMemberGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainMemberGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainMemberGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsTrainMemberEventCopyWith<IsTrainMemberEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsTrainMemberEventCopyWith<$Res> {
  factory $IsTrainMemberEventCopyWith(
          IsTrainMemberEvent value, $Res Function(IsTrainMemberEvent) then) =
      _$IsTrainMemberEventCopyWithImpl<$Res>;
  $Res call({String userId, Train train});
}

/// @nodoc
class _$IsTrainMemberEventCopyWithImpl<$Res>
    implements $IsTrainMemberEventCopyWith<$Res> {
  _$IsTrainMemberEventCopyWithImpl(this._value, this._then);

  final IsTrainMemberEvent _value;
  // ignore: unused_field
  final $Res Function(IsTrainMemberEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? train = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      train: train == freezed
          ? _value.train
          : train // ignore: cast_nullable_to_non_nullable
              as Train,
    ));
  }
}

/// @nodoc
abstract class _$$IsTrainMemberGetCopyWith<$Res>
    implements $IsTrainMemberEventCopyWith<$Res> {
  factory _$$IsTrainMemberGetCopyWith(
          _$IsTrainMemberGet value, $Res Function(_$IsTrainMemberGet) then) =
      __$$IsTrainMemberGetCopyWithImpl<$Res>;
  @override
  $Res call({String userId, Train train});
}

/// @nodoc
class __$$IsTrainMemberGetCopyWithImpl<$Res>
    extends _$IsTrainMemberEventCopyWithImpl<$Res>
    implements _$$IsTrainMemberGetCopyWith<$Res> {
  __$$IsTrainMemberGetCopyWithImpl(
      _$IsTrainMemberGet _value, $Res Function(_$IsTrainMemberGet) _then)
      : super(_value, (v) => _then(v as _$IsTrainMemberGet));

  @override
  _$IsTrainMemberGet get _value => super._value as _$IsTrainMemberGet;

  @override
  $Res call({
    Object? userId = freezed,
    Object? train = freezed,
  }) {
    return _then(_$IsTrainMemberGet(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      train == freezed
          ? _value.train
          : train // ignore: cast_nullable_to_non_nullable
              as Train,
    ));
  }
}

/// @nodoc

class _$IsTrainMemberGet implements IsTrainMemberGet {
  const _$IsTrainMemberGet(this.userId, this.train);

  @override
  final String userId;
  @override
  final Train train;

  @override
  String toString() {
    return 'IsTrainMemberEvent.get(userId: $userId, train: $train)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsTrainMemberGet &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.train, train));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(train));

  @JsonKey(ignore: true)
  @override
  _$$IsTrainMemberGetCopyWith<_$IsTrainMemberGet> get copyWith =>
      __$$IsTrainMemberGetCopyWithImpl<_$IsTrainMemberGet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, Train train) get,
  }) {
    return get(userId, train);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId, Train train)? get,
  }) {
    return get?.call(userId, train);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, Train train)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(userId, train);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsTrainMemberGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainMemberGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainMemberGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class IsTrainMemberGet implements IsTrainMemberEvent {
  const factory IsTrainMemberGet(final String userId, final Train train) =
      _$IsTrainMemberGet;

  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  Train get train => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$IsTrainMemberGetCopyWith<_$IsTrainMemberGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IsTrainMemberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(bool isTrainMember) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isTrainMember)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isTrainMember)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsTrainMemberInit value) init,
    required TResult Function(IsTrainMemberLoading value) loading,
    required TResult Function(IsTrainMemberLoaded value) loaded,
    required TResult Function(IsTrainMemberError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainMemberInit value)? init,
    TResult Function(IsTrainMemberLoading value)? loading,
    TResult Function(IsTrainMemberLoaded value)? loaded,
    TResult Function(IsTrainMemberError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainMemberInit value)? init,
    TResult Function(IsTrainMemberLoading value)? loading,
    TResult Function(IsTrainMemberLoaded value)? loaded,
    TResult Function(IsTrainMemberError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsTrainMemberStateCopyWith<$Res> {
  factory $IsTrainMemberStateCopyWith(
          IsTrainMemberState value, $Res Function(IsTrainMemberState) then) =
      _$IsTrainMemberStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsTrainMemberStateCopyWithImpl<$Res>
    implements $IsTrainMemberStateCopyWith<$Res> {
  _$IsTrainMemberStateCopyWithImpl(this._value, this._then);

  final IsTrainMemberState _value;
  // ignore: unused_field
  final $Res Function(IsTrainMemberState) _then;
}

/// @nodoc
abstract class _$$IsTrainMemberInitCopyWith<$Res> {
  factory _$$IsTrainMemberInitCopyWith(
          _$IsTrainMemberInit value, $Res Function(_$IsTrainMemberInit) then) =
      __$$IsTrainMemberInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsTrainMemberInitCopyWithImpl<$Res>
    extends _$IsTrainMemberStateCopyWithImpl<$Res>
    implements _$$IsTrainMemberInitCopyWith<$Res> {
  __$$IsTrainMemberInitCopyWithImpl(
      _$IsTrainMemberInit _value, $Res Function(_$IsTrainMemberInit) _then)
      : super(_value, (v) => _then(v as _$IsTrainMemberInit));

  @override
  _$IsTrainMemberInit get _value => super._value as _$IsTrainMemberInit;
}

/// @nodoc

class _$IsTrainMemberInit implements IsTrainMemberInit {
  const _$IsTrainMemberInit();

  @override
  String toString() {
    return 'IsTrainMemberState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsTrainMemberInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(bool isTrainMember) loaded,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isTrainMember)? loaded,
    TResult Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isTrainMember)? loaded,
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
    required TResult Function(IsTrainMemberInit value) init,
    required TResult Function(IsTrainMemberLoading value) loading,
    required TResult Function(IsTrainMemberLoaded value) loaded,
    required TResult Function(IsTrainMemberError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainMemberInit value)? init,
    TResult Function(IsTrainMemberLoading value)? loading,
    TResult Function(IsTrainMemberLoaded value)? loaded,
    TResult Function(IsTrainMemberError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainMemberInit value)? init,
    TResult Function(IsTrainMemberLoading value)? loading,
    TResult Function(IsTrainMemberLoaded value)? loaded,
    TResult Function(IsTrainMemberError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class IsTrainMemberInit implements IsTrainMemberState {
  const factory IsTrainMemberInit() = _$IsTrainMemberInit;
}

/// @nodoc
abstract class _$$IsTrainMemberLoadingCopyWith<$Res> {
  factory _$$IsTrainMemberLoadingCopyWith(_$IsTrainMemberLoading value,
          $Res Function(_$IsTrainMemberLoading) then) =
      __$$IsTrainMemberLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsTrainMemberLoadingCopyWithImpl<$Res>
    extends _$IsTrainMemberStateCopyWithImpl<$Res>
    implements _$$IsTrainMemberLoadingCopyWith<$Res> {
  __$$IsTrainMemberLoadingCopyWithImpl(_$IsTrainMemberLoading _value,
      $Res Function(_$IsTrainMemberLoading) _then)
      : super(_value, (v) => _then(v as _$IsTrainMemberLoading));

  @override
  _$IsTrainMemberLoading get _value => super._value as _$IsTrainMemberLoading;
}

/// @nodoc

class _$IsTrainMemberLoading implements IsTrainMemberLoading {
  const _$IsTrainMemberLoading();

  @override
  String toString() {
    return 'IsTrainMemberState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsTrainMemberLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(bool isTrainMember) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isTrainMember)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isTrainMember)? loaded,
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
    required TResult Function(IsTrainMemberInit value) init,
    required TResult Function(IsTrainMemberLoading value) loading,
    required TResult Function(IsTrainMemberLoaded value) loaded,
    required TResult Function(IsTrainMemberError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainMemberInit value)? init,
    TResult Function(IsTrainMemberLoading value)? loading,
    TResult Function(IsTrainMemberLoaded value)? loaded,
    TResult Function(IsTrainMemberError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainMemberInit value)? init,
    TResult Function(IsTrainMemberLoading value)? loading,
    TResult Function(IsTrainMemberLoaded value)? loaded,
    TResult Function(IsTrainMemberError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class IsTrainMemberLoading implements IsTrainMemberState {
  const factory IsTrainMemberLoading() = _$IsTrainMemberLoading;
}

/// @nodoc
abstract class _$$IsTrainMemberLoadedCopyWith<$Res> {
  factory _$$IsTrainMemberLoadedCopyWith(_$IsTrainMemberLoaded value,
          $Res Function(_$IsTrainMemberLoaded) then) =
      __$$IsTrainMemberLoadedCopyWithImpl<$Res>;
  $Res call({bool isTrainMember});
}

/// @nodoc
class __$$IsTrainMemberLoadedCopyWithImpl<$Res>
    extends _$IsTrainMemberStateCopyWithImpl<$Res>
    implements _$$IsTrainMemberLoadedCopyWith<$Res> {
  __$$IsTrainMemberLoadedCopyWithImpl(
      _$IsTrainMemberLoaded _value, $Res Function(_$IsTrainMemberLoaded) _then)
      : super(_value, (v) => _then(v as _$IsTrainMemberLoaded));

  @override
  _$IsTrainMemberLoaded get _value => super._value as _$IsTrainMemberLoaded;

  @override
  $Res call({
    Object? isTrainMember = freezed,
  }) {
    return _then(_$IsTrainMemberLoaded(
      isTrainMember == freezed
          ? _value.isTrainMember
          : isTrainMember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsTrainMemberLoaded implements IsTrainMemberLoaded {
  const _$IsTrainMemberLoaded(this.isTrainMember);

  @override
  final bool isTrainMember;

  @override
  String toString() {
    return 'IsTrainMemberState.loaded(isTrainMember: $isTrainMember)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsTrainMemberLoaded &&
            const DeepCollectionEquality()
                .equals(other.isTrainMember, isTrainMember));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isTrainMember));

  @JsonKey(ignore: true)
  @override
  _$$IsTrainMemberLoadedCopyWith<_$IsTrainMemberLoaded> get copyWith =>
      __$$IsTrainMemberLoadedCopyWithImpl<_$IsTrainMemberLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(bool isTrainMember) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(isTrainMember);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isTrainMember)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(isTrainMember);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isTrainMember)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isTrainMember);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsTrainMemberInit value) init,
    required TResult Function(IsTrainMemberLoading value) loading,
    required TResult Function(IsTrainMemberLoaded value) loaded,
    required TResult Function(IsTrainMemberError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainMemberInit value)? init,
    TResult Function(IsTrainMemberLoading value)? loading,
    TResult Function(IsTrainMemberLoaded value)? loaded,
    TResult Function(IsTrainMemberError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainMemberInit value)? init,
    TResult Function(IsTrainMemberLoading value)? loading,
    TResult Function(IsTrainMemberLoaded value)? loaded,
    TResult Function(IsTrainMemberError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class IsTrainMemberLoaded implements IsTrainMemberState {
  const factory IsTrainMemberLoaded(final bool isTrainMember) =
      _$IsTrainMemberLoaded;

  bool get isTrainMember => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$IsTrainMemberLoadedCopyWith<_$IsTrainMemberLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsTrainMemberErrorCopyWith<$Res> {
  factory _$$IsTrainMemberErrorCopyWith(_$IsTrainMemberError value,
          $Res Function(_$IsTrainMemberError) then) =
      __$$IsTrainMemberErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$IsTrainMemberErrorCopyWithImpl<$Res>
    extends _$IsTrainMemberStateCopyWithImpl<$Res>
    implements _$$IsTrainMemberErrorCopyWith<$Res> {
  __$$IsTrainMemberErrorCopyWithImpl(
      _$IsTrainMemberError _value, $Res Function(_$IsTrainMemberError) _then)
      : super(_value, (v) => _then(v as _$IsTrainMemberError));

  @override
  _$IsTrainMemberError get _value => super._value as _$IsTrainMemberError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$IsTrainMemberError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsTrainMemberError implements IsTrainMemberError {
  const _$IsTrainMemberError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'IsTrainMemberState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsTrainMemberError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$IsTrainMemberErrorCopyWith<_$IsTrainMemberError> get copyWith =>
      __$$IsTrainMemberErrorCopyWithImpl<_$IsTrainMemberError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(bool isTrainMember) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isTrainMember)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isTrainMember)? loaded,
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
    required TResult Function(IsTrainMemberInit value) init,
    required TResult Function(IsTrainMemberLoading value) loading,
    required TResult Function(IsTrainMemberLoaded value) loaded,
    required TResult Function(IsTrainMemberError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsTrainMemberInit value)? init,
    TResult Function(IsTrainMemberLoading value)? loading,
    TResult Function(IsTrainMemberLoaded value)? loaded,
    TResult Function(IsTrainMemberError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsTrainMemberInit value)? init,
    TResult Function(IsTrainMemberLoading value)? loading,
    TResult Function(IsTrainMemberLoaded value)? loaded,
    TResult Function(IsTrainMemberError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class IsTrainMemberError implements IsTrainMemberState {
  const factory IsTrainMemberError(final String message) = _$IsTrainMemberError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$IsTrainMemberErrorCopyWith<_$IsTrainMemberError> get copyWith =>
      throw _privateConstructorUsedError;
}
