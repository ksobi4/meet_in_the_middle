// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_trains_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserTrainsEvent {
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserTrainsGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserTrainsGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserTrainsGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTrainsEventCopyWith<UserTrainsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTrainsEventCopyWith<$Res> {
  factory $UserTrainsEventCopyWith(
          UserTrainsEvent value, $Res Function(UserTrainsEvent) then) =
      _$UserTrainsEventCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$UserTrainsEventCopyWithImpl<$Res>
    implements $UserTrainsEventCopyWith<$Res> {
  _$UserTrainsEventCopyWithImpl(this._value, this._then);

  final UserTrainsEvent _value;
  // ignore: unused_field
  final $Res Function(UserTrainsEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$UserTrainsGetCopyWith<$Res>
    implements $UserTrainsEventCopyWith<$Res> {
  factory _$$UserTrainsGetCopyWith(
          _$UserTrainsGet value, $Res Function(_$UserTrainsGet) then) =
      __$$UserTrainsGetCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

/// @nodoc
class __$$UserTrainsGetCopyWithImpl<$Res>
    extends _$UserTrainsEventCopyWithImpl<$Res>
    implements _$$UserTrainsGetCopyWith<$Res> {
  __$$UserTrainsGetCopyWithImpl(
      _$UserTrainsGet _value, $Res Function(_$UserTrainsGet) _then)
      : super(_value, (v) => _then(v as _$UserTrainsGet));

  @override
  _$UserTrainsGet get _value => super._value as _$UserTrainsGet;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$UserTrainsGet(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserTrainsGet implements UserTrainsGet {
  const _$UserTrainsGet(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserTrainsEvent.get(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTrainsGet &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$UserTrainsGetCopyWith<_$UserTrainsGet> get copyWith =>
      __$$UserTrainsGetCopyWithImpl<_$UserTrainsGet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) get,
  }) {
    return get(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? get,
  }) {
    return get?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserTrainsGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserTrainsGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserTrainsGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class UserTrainsGet implements UserTrainsEvent {
  const factory UserTrainsGet(final String userId) = _$UserTrainsGet;

  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UserTrainsGetCopyWith<_$UserTrainsGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserTrainsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Train> trainList) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Train> trainList)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Train> trainList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserTrainsStateInit value) init,
    required TResult Function(UserTrainsStateLoading value) loading,
    required TResult Function(UserTrainsStateLoaded value) loaded,
    required TResult Function(UserTrainsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserTrainsStateInit value)? init,
    TResult Function(UserTrainsStateLoading value)? loading,
    TResult Function(UserTrainsStateLoaded value)? loaded,
    TResult Function(UserTrainsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserTrainsStateInit value)? init,
    TResult Function(UserTrainsStateLoading value)? loading,
    TResult Function(UserTrainsStateLoaded value)? loaded,
    TResult Function(UserTrainsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTrainsStateCopyWith<$Res> {
  factory $UserTrainsStateCopyWith(
          UserTrainsState value, $Res Function(UserTrainsState) then) =
      _$UserTrainsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserTrainsStateCopyWithImpl<$Res>
    implements $UserTrainsStateCopyWith<$Res> {
  _$UserTrainsStateCopyWithImpl(this._value, this._then);

  final UserTrainsState _value;
  // ignore: unused_field
  final $Res Function(UserTrainsState) _then;
}

/// @nodoc
abstract class _$$UserTrainsStateInitCopyWith<$Res> {
  factory _$$UserTrainsStateInitCopyWith(_$UserTrainsStateInit value,
          $Res Function(_$UserTrainsStateInit) then) =
      __$$UserTrainsStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserTrainsStateInitCopyWithImpl<$Res>
    extends _$UserTrainsStateCopyWithImpl<$Res>
    implements _$$UserTrainsStateInitCopyWith<$Res> {
  __$$UserTrainsStateInitCopyWithImpl(
      _$UserTrainsStateInit _value, $Res Function(_$UserTrainsStateInit) _then)
      : super(_value, (v) => _then(v as _$UserTrainsStateInit));

  @override
  _$UserTrainsStateInit get _value => super._value as _$UserTrainsStateInit;
}

/// @nodoc

class _$UserTrainsStateInit implements UserTrainsStateInit {
  const _$UserTrainsStateInit();

  @override
  String toString() {
    return 'UserTrainsState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserTrainsStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Train> trainList) loaded,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Train> trainList)? loaded,
    TResult Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Train> trainList)? loaded,
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
    required TResult Function(UserTrainsStateInit value) init,
    required TResult Function(UserTrainsStateLoading value) loading,
    required TResult Function(UserTrainsStateLoaded value) loaded,
    required TResult Function(UserTrainsStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserTrainsStateInit value)? init,
    TResult Function(UserTrainsStateLoading value)? loading,
    TResult Function(UserTrainsStateLoaded value)? loaded,
    TResult Function(UserTrainsStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserTrainsStateInit value)? init,
    TResult Function(UserTrainsStateLoading value)? loading,
    TResult Function(UserTrainsStateLoaded value)? loaded,
    TResult Function(UserTrainsStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UserTrainsStateInit implements UserTrainsState {
  const factory UserTrainsStateInit() = _$UserTrainsStateInit;
}

/// @nodoc
abstract class _$$UserTrainsStateLoadingCopyWith<$Res> {
  factory _$$UserTrainsStateLoadingCopyWith(_$UserTrainsStateLoading value,
          $Res Function(_$UserTrainsStateLoading) then) =
      __$$UserTrainsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserTrainsStateLoadingCopyWithImpl<$Res>
    extends _$UserTrainsStateCopyWithImpl<$Res>
    implements _$$UserTrainsStateLoadingCopyWith<$Res> {
  __$$UserTrainsStateLoadingCopyWithImpl(_$UserTrainsStateLoading _value,
      $Res Function(_$UserTrainsStateLoading) _then)
      : super(_value, (v) => _then(v as _$UserTrainsStateLoading));

  @override
  _$UserTrainsStateLoading get _value =>
      super._value as _$UserTrainsStateLoading;
}

/// @nodoc

class _$UserTrainsStateLoading implements UserTrainsStateLoading {
  const _$UserTrainsStateLoading();

  @override
  String toString() {
    return 'UserTrainsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserTrainsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Train> trainList) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Train> trainList)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Train> trainList)? loaded,
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
    required TResult Function(UserTrainsStateInit value) init,
    required TResult Function(UserTrainsStateLoading value) loading,
    required TResult Function(UserTrainsStateLoaded value) loaded,
    required TResult Function(UserTrainsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserTrainsStateInit value)? init,
    TResult Function(UserTrainsStateLoading value)? loading,
    TResult Function(UserTrainsStateLoaded value)? loaded,
    TResult Function(UserTrainsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserTrainsStateInit value)? init,
    TResult Function(UserTrainsStateLoading value)? loading,
    TResult Function(UserTrainsStateLoaded value)? loaded,
    TResult Function(UserTrainsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserTrainsStateLoading implements UserTrainsState {
  const factory UserTrainsStateLoading() = _$UserTrainsStateLoading;
}

/// @nodoc
abstract class _$$UserTrainsStateLoadedCopyWith<$Res> {
  factory _$$UserTrainsStateLoadedCopyWith(_$UserTrainsStateLoaded value,
          $Res Function(_$UserTrainsStateLoaded) then) =
      __$$UserTrainsStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Train> trainList});
}

/// @nodoc
class __$$UserTrainsStateLoadedCopyWithImpl<$Res>
    extends _$UserTrainsStateCopyWithImpl<$Res>
    implements _$$UserTrainsStateLoadedCopyWith<$Res> {
  __$$UserTrainsStateLoadedCopyWithImpl(_$UserTrainsStateLoaded _value,
      $Res Function(_$UserTrainsStateLoaded) _then)
      : super(_value, (v) => _then(v as _$UserTrainsStateLoaded));

  @override
  _$UserTrainsStateLoaded get _value => super._value as _$UserTrainsStateLoaded;

  @override
  $Res call({
    Object? trainList = freezed,
  }) {
    return _then(_$UserTrainsStateLoaded(
      trainList == freezed
          ? _value._trainList
          : trainList // ignore: cast_nullable_to_non_nullable
              as List<Train>,
    ));
  }
}

/// @nodoc

class _$UserTrainsStateLoaded implements UserTrainsStateLoaded {
  const _$UserTrainsStateLoaded(final List<Train> trainList)
      : _trainList = trainList;

  final List<Train> _trainList;
  @override
  List<Train> get trainList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainList);
  }

  @override
  String toString() {
    return 'UserTrainsState.loaded(trainList: $trainList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTrainsStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._trainList, _trainList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trainList));

  @JsonKey(ignore: true)
  @override
  _$$UserTrainsStateLoadedCopyWith<_$UserTrainsStateLoaded> get copyWith =>
      __$$UserTrainsStateLoadedCopyWithImpl<_$UserTrainsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Train> trainList) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(trainList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Train> trainList)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(trainList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Train> trainList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(trainList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserTrainsStateInit value) init,
    required TResult Function(UserTrainsStateLoading value) loading,
    required TResult Function(UserTrainsStateLoaded value) loaded,
    required TResult Function(UserTrainsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserTrainsStateInit value)? init,
    TResult Function(UserTrainsStateLoading value)? loading,
    TResult Function(UserTrainsStateLoaded value)? loaded,
    TResult Function(UserTrainsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserTrainsStateInit value)? init,
    TResult Function(UserTrainsStateLoading value)? loading,
    TResult Function(UserTrainsStateLoaded value)? loaded,
    TResult Function(UserTrainsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserTrainsStateLoaded implements UserTrainsState {
  const factory UserTrainsStateLoaded(final List<Train> trainList) =
      _$UserTrainsStateLoaded;

  List<Train> get trainList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UserTrainsStateLoadedCopyWith<_$UserTrainsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserTrainsStateErrorCopyWith<$Res> {
  factory _$$UserTrainsStateErrorCopyWith(_$UserTrainsStateError value,
          $Res Function(_$UserTrainsStateError) then) =
      __$$UserTrainsStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$UserTrainsStateErrorCopyWithImpl<$Res>
    extends _$UserTrainsStateCopyWithImpl<$Res>
    implements _$$UserTrainsStateErrorCopyWith<$Res> {
  __$$UserTrainsStateErrorCopyWithImpl(_$UserTrainsStateError _value,
      $Res Function(_$UserTrainsStateError) _then)
      : super(_value, (v) => _then(v as _$UserTrainsStateError));

  @override
  _$UserTrainsStateError get _value => super._value as _$UserTrainsStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UserTrainsStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserTrainsStateError implements UserTrainsStateError {
  const _$UserTrainsStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserTrainsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTrainsStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UserTrainsStateErrorCopyWith<_$UserTrainsStateError> get copyWith =>
      __$$UserTrainsStateErrorCopyWithImpl<_$UserTrainsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Train> trainList) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Train> trainList)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Train> trainList)? loaded,
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
    required TResult Function(UserTrainsStateInit value) init,
    required TResult Function(UserTrainsStateLoading value) loading,
    required TResult Function(UserTrainsStateLoaded value) loaded,
    required TResult Function(UserTrainsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserTrainsStateInit value)? init,
    TResult Function(UserTrainsStateLoading value)? loading,
    TResult Function(UserTrainsStateLoaded value)? loaded,
    TResult Function(UserTrainsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserTrainsStateInit value)? init,
    TResult Function(UserTrainsStateLoading value)? loading,
    TResult Function(UserTrainsStateLoaded value)? loaded,
    TResult Function(UserTrainsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserTrainsStateError implements UserTrainsState {
  const factory UserTrainsStateError(final String message) =
      _$UserTrainsStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UserTrainsStateErrorCopyWith<_$UserTrainsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
