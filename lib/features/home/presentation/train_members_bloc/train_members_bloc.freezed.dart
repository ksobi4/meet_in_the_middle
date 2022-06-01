// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'train_members_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrainMembersEvent {
  Train get train => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Train train) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Train train)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Train train)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainMembersGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainMembersGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainMembersGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainMembersEventCopyWith<TrainMembersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainMembersEventCopyWith<$Res> {
  factory $TrainMembersEventCopyWith(
          TrainMembersEvent value, $Res Function(TrainMembersEvent) then) =
      _$TrainMembersEventCopyWithImpl<$Res>;
  $Res call({Train train});
}

/// @nodoc
class _$TrainMembersEventCopyWithImpl<$Res>
    implements $TrainMembersEventCopyWith<$Res> {
  _$TrainMembersEventCopyWithImpl(this._value, this._then);

  final TrainMembersEvent _value;
  // ignore: unused_field
  final $Res Function(TrainMembersEvent) _then;

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
abstract class _$$TrainMembersGetCopyWith<$Res>
    implements $TrainMembersEventCopyWith<$Res> {
  factory _$$TrainMembersGetCopyWith(
          _$TrainMembersGet value, $Res Function(_$TrainMembersGet) then) =
      __$$TrainMembersGetCopyWithImpl<$Res>;
  @override
  $Res call({Train train});
}

/// @nodoc
class __$$TrainMembersGetCopyWithImpl<$Res>
    extends _$TrainMembersEventCopyWithImpl<$Res>
    implements _$$TrainMembersGetCopyWith<$Res> {
  __$$TrainMembersGetCopyWithImpl(
      _$TrainMembersGet _value, $Res Function(_$TrainMembersGet) _then)
      : super(_value, (v) => _then(v as _$TrainMembersGet));

  @override
  _$TrainMembersGet get _value => super._value as _$TrainMembersGet;

  @override
  $Res call({
    Object? train = freezed,
  }) {
    return _then(_$TrainMembersGet(
      train == freezed
          ? _value.train
          : train // ignore: cast_nullable_to_non_nullable
              as Train,
    ));
  }
}

/// @nodoc

class _$TrainMembersGet implements TrainMembersGet {
  const _$TrainMembersGet(this.train);

  @override
  final Train train;

  @override
  String toString() {
    return 'TrainMembersEvent.get(train: $train)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainMembersGet &&
            const DeepCollectionEquality().equals(other.train, train));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(train));

  @JsonKey(ignore: true)
  @override
  _$$TrainMembersGetCopyWith<_$TrainMembersGet> get copyWith =>
      __$$TrainMembersGetCopyWithImpl<_$TrainMembersGet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Train train) get,
  }) {
    return get(train);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Train train)? get,
  }) {
    return get?.call(train);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Train train)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(train);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainMembersGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainMembersGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainMembersGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class TrainMembersGet implements TrainMembersEvent {
  const factory TrainMembersGet(final Train train) = _$TrainMembersGet;

  @override
  Train get train => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$TrainMembersGetCopyWith<_$TrainMembersGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrainMembersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<User> userList) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<User> userList)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<User> userList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainMembersInit value) init,
    required TResult Function(TrainMembersLoading value) loading,
    required TResult Function(TrainMembersLoaded value) loaded,
    required TResult Function(TrainMembersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainMembersInit value)? init,
    TResult Function(TrainMembersLoading value)? loading,
    TResult Function(TrainMembersLoaded value)? loaded,
    TResult Function(TrainMembersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainMembersInit value)? init,
    TResult Function(TrainMembersLoading value)? loading,
    TResult Function(TrainMembersLoaded value)? loaded,
    TResult Function(TrainMembersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainMembersStateCopyWith<$Res> {
  factory $TrainMembersStateCopyWith(
          TrainMembersState value, $Res Function(TrainMembersState) then) =
      _$TrainMembersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainMembersStateCopyWithImpl<$Res>
    implements $TrainMembersStateCopyWith<$Res> {
  _$TrainMembersStateCopyWithImpl(this._value, this._then);

  final TrainMembersState _value;
  // ignore: unused_field
  final $Res Function(TrainMembersState) _then;
}

/// @nodoc
abstract class _$$TrainMembersInitCopyWith<$Res> {
  factory _$$TrainMembersInitCopyWith(
          _$TrainMembersInit value, $Res Function(_$TrainMembersInit) then) =
      __$$TrainMembersInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrainMembersInitCopyWithImpl<$Res>
    extends _$TrainMembersStateCopyWithImpl<$Res>
    implements _$$TrainMembersInitCopyWith<$Res> {
  __$$TrainMembersInitCopyWithImpl(
      _$TrainMembersInit _value, $Res Function(_$TrainMembersInit) _then)
      : super(_value, (v) => _then(v as _$TrainMembersInit));

  @override
  _$TrainMembersInit get _value => super._value as _$TrainMembersInit;
}

/// @nodoc

class _$TrainMembersInit implements TrainMembersInit {
  const _$TrainMembersInit();

  @override
  String toString() {
    return 'TrainMembersState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrainMembersInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<User> userList) loaded,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<User> userList)? loaded,
    TResult Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<User> userList)? loaded,
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
    required TResult Function(TrainMembersInit value) init,
    required TResult Function(TrainMembersLoading value) loading,
    required TResult Function(TrainMembersLoaded value) loaded,
    required TResult Function(TrainMembersError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainMembersInit value)? init,
    TResult Function(TrainMembersLoading value)? loading,
    TResult Function(TrainMembersLoaded value)? loaded,
    TResult Function(TrainMembersError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainMembersInit value)? init,
    TResult Function(TrainMembersLoading value)? loading,
    TResult Function(TrainMembersLoaded value)? loaded,
    TResult Function(TrainMembersError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TrainMembersInit implements TrainMembersState {
  const factory TrainMembersInit() = _$TrainMembersInit;
}

/// @nodoc
abstract class _$$TrainMembersLoadingCopyWith<$Res> {
  factory _$$TrainMembersLoadingCopyWith(_$TrainMembersLoading value,
          $Res Function(_$TrainMembersLoading) then) =
      __$$TrainMembersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrainMembersLoadingCopyWithImpl<$Res>
    extends _$TrainMembersStateCopyWithImpl<$Res>
    implements _$$TrainMembersLoadingCopyWith<$Res> {
  __$$TrainMembersLoadingCopyWithImpl(
      _$TrainMembersLoading _value, $Res Function(_$TrainMembersLoading) _then)
      : super(_value, (v) => _then(v as _$TrainMembersLoading));

  @override
  _$TrainMembersLoading get _value => super._value as _$TrainMembersLoading;
}

/// @nodoc

class _$TrainMembersLoading implements TrainMembersLoading {
  const _$TrainMembersLoading();

  @override
  String toString() {
    return 'TrainMembersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrainMembersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<User> userList) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<User> userList)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<User> userList)? loaded,
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
    required TResult Function(TrainMembersInit value) init,
    required TResult Function(TrainMembersLoading value) loading,
    required TResult Function(TrainMembersLoaded value) loaded,
    required TResult Function(TrainMembersError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainMembersInit value)? init,
    TResult Function(TrainMembersLoading value)? loading,
    TResult Function(TrainMembersLoaded value)? loaded,
    TResult Function(TrainMembersError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainMembersInit value)? init,
    TResult Function(TrainMembersLoading value)? loading,
    TResult Function(TrainMembersLoaded value)? loaded,
    TResult Function(TrainMembersError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TrainMembersLoading implements TrainMembersState {
  const factory TrainMembersLoading() = _$TrainMembersLoading;
}

/// @nodoc
abstract class _$$TrainMembersLoadedCopyWith<$Res> {
  factory _$$TrainMembersLoadedCopyWith(_$TrainMembersLoaded value,
          $Res Function(_$TrainMembersLoaded) then) =
      __$$TrainMembersLoadedCopyWithImpl<$Res>;
  $Res call({List<User> userList});
}

/// @nodoc
class __$$TrainMembersLoadedCopyWithImpl<$Res>
    extends _$TrainMembersStateCopyWithImpl<$Res>
    implements _$$TrainMembersLoadedCopyWith<$Res> {
  __$$TrainMembersLoadedCopyWithImpl(
      _$TrainMembersLoaded _value, $Res Function(_$TrainMembersLoaded) _then)
      : super(_value, (v) => _then(v as _$TrainMembersLoaded));

  @override
  _$TrainMembersLoaded get _value => super._value as _$TrainMembersLoaded;

  @override
  $Res call({
    Object? userList = freezed,
  }) {
    return _then(_$TrainMembersLoaded(
      userList == freezed
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$TrainMembersLoaded implements TrainMembersLoaded {
  const _$TrainMembersLoaded(final List<User> userList) : _userList = userList;

  final List<User> _userList;
  @override
  List<User> get userList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  String toString() {
    return 'TrainMembersState.loaded(userList: $userList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainMembersLoaded &&
            const DeepCollectionEquality().equals(other._userList, _userList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userList));

  @JsonKey(ignore: true)
  @override
  _$$TrainMembersLoadedCopyWith<_$TrainMembersLoaded> get copyWith =>
      __$$TrainMembersLoadedCopyWithImpl<_$TrainMembersLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<User> userList) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(userList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<User> userList)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(userList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<User> userList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainMembersInit value) init,
    required TResult Function(TrainMembersLoading value) loading,
    required TResult Function(TrainMembersLoaded value) loaded,
    required TResult Function(TrainMembersError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainMembersInit value)? init,
    TResult Function(TrainMembersLoading value)? loading,
    TResult Function(TrainMembersLoaded value)? loaded,
    TResult Function(TrainMembersError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainMembersInit value)? init,
    TResult Function(TrainMembersLoading value)? loading,
    TResult Function(TrainMembersLoaded value)? loaded,
    TResult Function(TrainMembersError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TrainMembersLoaded implements TrainMembersState {
  const factory TrainMembersLoaded(final List<User> userList) =
      _$TrainMembersLoaded;

  List<User> get userList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TrainMembersLoadedCopyWith<_$TrainMembersLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrainMembersErrorCopyWith<$Res> {
  factory _$$TrainMembersErrorCopyWith(
          _$TrainMembersError value, $Res Function(_$TrainMembersError) then) =
      __$$TrainMembersErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$TrainMembersErrorCopyWithImpl<$Res>
    extends _$TrainMembersStateCopyWithImpl<$Res>
    implements _$$TrainMembersErrorCopyWith<$Res> {
  __$$TrainMembersErrorCopyWithImpl(
      _$TrainMembersError _value, $Res Function(_$TrainMembersError) _then)
      : super(_value, (v) => _then(v as _$TrainMembersError));

  @override
  _$TrainMembersError get _value => super._value as _$TrainMembersError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TrainMembersError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TrainMembersError implements TrainMembersError {
  const _$TrainMembersError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TrainMembersState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainMembersError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$TrainMembersErrorCopyWith<_$TrainMembersError> get copyWith =>
      __$$TrainMembersErrorCopyWithImpl<_$TrainMembersError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<User> userList) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<User> userList)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<User> userList)? loaded,
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
    required TResult Function(TrainMembersInit value) init,
    required TResult Function(TrainMembersLoading value) loading,
    required TResult Function(TrainMembersLoaded value) loaded,
    required TResult Function(TrainMembersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainMembersInit value)? init,
    TResult Function(TrainMembersLoading value)? loading,
    TResult Function(TrainMembersLoaded value)? loaded,
    TResult Function(TrainMembersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainMembersInit value)? init,
    TResult Function(TrainMembersLoading value)? loading,
    TResult Function(TrainMembersLoaded value)? loaded,
    TResult Function(TrainMembersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TrainMembersError implements TrainMembersState {
  const factory TrainMembersError(final String message) = _$TrainMembersError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TrainMembersErrorCopyWith<_$TrainMembersError> get copyWith =>
      throw _privateConstructorUsedError;
}
