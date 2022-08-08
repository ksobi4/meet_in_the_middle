// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'is_event_member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IsEventMemberEvent {
  String get userId => throw _privateConstructorUsedError;
  TrainEvent get event => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, TrainEvent event) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId, TrainEvent event)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, TrainEvent event)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsEventMemberGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsEventMemberGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsEventMemberGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsEventMemberEventCopyWith<IsEventMemberEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsEventMemberEventCopyWith<$Res> {
  factory $IsEventMemberEventCopyWith(
          IsEventMemberEvent value, $Res Function(IsEventMemberEvent) then) =
      _$IsEventMemberEventCopyWithImpl<$Res>;
  $Res call({String userId, TrainEvent event});
}

/// @nodoc
class _$IsEventMemberEventCopyWithImpl<$Res>
    implements $IsEventMemberEventCopyWith<$Res> {
  _$IsEventMemberEventCopyWithImpl(this._value, this._then);

  final IsEventMemberEvent _value;
  // ignore: unused_field
  final $Res Function(IsEventMemberEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as TrainEvent,
    ));
  }
}

/// @nodoc
abstract class _$$IsEventMemberGetCopyWith<$Res>
    implements $IsEventMemberEventCopyWith<$Res> {
  factory _$$IsEventMemberGetCopyWith(
          _$IsEventMemberGet value, $Res Function(_$IsEventMemberGet) then) =
      __$$IsEventMemberGetCopyWithImpl<$Res>;
  @override
  $Res call({String userId, TrainEvent event});
}

/// @nodoc
class __$$IsEventMemberGetCopyWithImpl<$Res>
    extends _$IsEventMemberEventCopyWithImpl<$Res>
    implements _$$IsEventMemberGetCopyWith<$Res> {
  __$$IsEventMemberGetCopyWithImpl(
      _$IsEventMemberGet _value, $Res Function(_$IsEventMemberGet) _then)
      : super(_value, (v) => _then(v as _$IsEventMemberGet));

  @override
  _$IsEventMemberGet get _value => super._value as _$IsEventMemberGet;

  @override
  $Res call({
    Object? userId = freezed,
    Object? event = freezed,
  }) {
    return _then(_$IsEventMemberGet(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as TrainEvent,
    ));
  }
}

/// @nodoc

class _$IsEventMemberGet implements IsEventMemberGet {
  const _$IsEventMemberGet(this.userId, this.event);

  @override
  final String userId;
  @override
  final TrainEvent event;

  @override
  String toString() {
    return 'IsEventMemberEvent.get(userId: $userId, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsEventMemberGet &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$IsEventMemberGetCopyWith<_$IsEventMemberGet> get copyWith =>
      __$$IsEventMemberGetCopyWithImpl<_$IsEventMemberGet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, TrainEvent event) get,
  }) {
    return get(userId, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId, TrainEvent event)? get,
  }) {
    return get?.call(userId, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, TrainEvent event)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(userId, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsEventMemberGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsEventMemberGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsEventMemberGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class IsEventMemberGet implements IsEventMemberEvent {
  const factory IsEventMemberGet(final String userId, final TrainEvent event) =
      _$IsEventMemberGet;

  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  TrainEvent get event => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$IsEventMemberGetCopyWith<_$IsEventMemberGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IsEventMemberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(bool isEventMember) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isEventMember)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isEventMember)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsEventMemberInit value) init,
    required TResult Function(IsEventMemberLoading value) loading,
    required TResult Function(IsEventMemberLoaded value) loaded,
    required TResult Function(IsEventMemberError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsEventMemberInit value)? init,
    TResult Function(IsEventMemberLoading value)? loading,
    TResult Function(IsEventMemberLoaded value)? loaded,
    TResult Function(IsEventMemberError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsEventMemberInit value)? init,
    TResult Function(IsEventMemberLoading value)? loading,
    TResult Function(IsEventMemberLoaded value)? loaded,
    TResult Function(IsEventMemberError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsEventMemberStateCopyWith<$Res> {
  factory $IsEventMemberStateCopyWith(
          IsEventMemberState value, $Res Function(IsEventMemberState) then) =
      _$IsEventMemberStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsEventMemberStateCopyWithImpl<$Res>
    implements $IsEventMemberStateCopyWith<$Res> {
  _$IsEventMemberStateCopyWithImpl(this._value, this._then);

  final IsEventMemberState _value;
  // ignore: unused_field
  final $Res Function(IsEventMemberState) _then;
}

/// @nodoc
abstract class _$$IsEventMemberInitCopyWith<$Res> {
  factory _$$IsEventMemberInitCopyWith(
          _$IsEventMemberInit value, $Res Function(_$IsEventMemberInit) then) =
      __$$IsEventMemberInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsEventMemberInitCopyWithImpl<$Res>
    extends _$IsEventMemberStateCopyWithImpl<$Res>
    implements _$$IsEventMemberInitCopyWith<$Res> {
  __$$IsEventMemberInitCopyWithImpl(
      _$IsEventMemberInit _value, $Res Function(_$IsEventMemberInit) _then)
      : super(_value, (v) => _then(v as _$IsEventMemberInit));

  @override
  _$IsEventMemberInit get _value => super._value as _$IsEventMemberInit;
}

/// @nodoc

class _$IsEventMemberInit implements IsEventMemberInit {
  const _$IsEventMemberInit();

  @override
  String toString() {
    return 'IsEventMemberState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsEventMemberInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(bool isEventMember) loaded,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isEventMember)? loaded,
    TResult Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isEventMember)? loaded,
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
    required TResult Function(IsEventMemberInit value) init,
    required TResult Function(IsEventMemberLoading value) loading,
    required TResult Function(IsEventMemberLoaded value) loaded,
    required TResult Function(IsEventMemberError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsEventMemberInit value)? init,
    TResult Function(IsEventMemberLoading value)? loading,
    TResult Function(IsEventMemberLoaded value)? loaded,
    TResult Function(IsEventMemberError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsEventMemberInit value)? init,
    TResult Function(IsEventMemberLoading value)? loading,
    TResult Function(IsEventMemberLoaded value)? loaded,
    TResult Function(IsEventMemberError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class IsEventMemberInit implements IsEventMemberState {
  const factory IsEventMemberInit() = _$IsEventMemberInit;
}

/// @nodoc
abstract class _$$IsEventMemberLoadingCopyWith<$Res> {
  factory _$$IsEventMemberLoadingCopyWith(_$IsEventMemberLoading value,
          $Res Function(_$IsEventMemberLoading) then) =
      __$$IsEventMemberLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsEventMemberLoadingCopyWithImpl<$Res>
    extends _$IsEventMemberStateCopyWithImpl<$Res>
    implements _$$IsEventMemberLoadingCopyWith<$Res> {
  __$$IsEventMemberLoadingCopyWithImpl(_$IsEventMemberLoading _value,
      $Res Function(_$IsEventMemberLoading) _then)
      : super(_value, (v) => _then(v as _$IsEventMemberLoading));

  @override
  _$IsEventMemberLoading get _value => super._value as _$IsEventMemberLoading;
}

/// @nodoc

class _$IsEventMemberLoading implements IsEventMemberLoading {
  const _$IsEventMemberLoading();

  @override
  String toString() {
    return 'IsEventMemberState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsEventMemberLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(bool isEventMember) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isEventMember)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isEventMember)? loaded,
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
    required TResult Function(IsEventMemberInit value) init,
    required TResult Function(IsEventMemberLoading value) loading,
    required TResult Function(IsEventMemberLoaded value) loaded,
    required TResult Function(IsEventMemberError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsEventMemberInit value)? init,
    TResult Function(IsEventMemberLoading value)? loading,
    TResult Function(IsEventMemberLoaded value)? loaded,
    TResult Function(IsEventMemberError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsEventMemberInit value)? init,
    TResult Function(IsEventMemberLoading value)? loading,
    TResult Function(IsEventMemberLoaded value)? loaded,
    TResult Function(IsEventMemberError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class IsEventMemberLoading implements IsEventMemberState {
  const factory IsEventMemberLoading() = _$IsEventMemberLoading;
}

/// @nodoc
abstract class _$$IsEventMemberLoadedCopyWith<$Res> {
  factory _$$IsEventMemberLoadedCopyWith(_$IsEventMemberLoaded value,
          $Res Function(_$IsEventMemberLoaded) then) =
      __$$IsEventMemberLoadedCopyWithImpl<$Res>;
  $Res call({bool isEventMember});
}

/// @nodoc
class __$$IsEventMemberLoadedCopyWithImpl<$Res>
    extends _$IsEventMemberStateCopyWithImpl<$Res>
    implements _$$IsEventMemberLoadedCopyWith<$Res> {
  __$$IsEventMemberLoadedCopyWithImpl(
      _$IsEventMemberLoaded _value, $Res Function(_$IsEventMemberLoaded) _then)
      : super(_value, (v) => _then(v as _$IsEventMemberLoaded));

  @override
  _$IsEventMemberLoaded get _value => super._value as _$IsEventMemberLoaded;

  @override
  $Res call({
    Object? isEventMember = freezed,
  }) {
    return _then(_$IsEventMemberLoaded(
      isEventMember == freezed
          ? _value.isEventMember
          : isEventMember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsEventMemberLoaded implements IsEventMemberLoaded {
  const _$IsEventMemberLoaded(this.isEventMember);

  @override
  final bool isEventMember;

  @override
  String toString() {
    return 'IsEventMemberState.loaded(isEventMember: $isEventMember)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsEventMemberLoaded &&
            const DeepCollectionEquality()
                .equals(other.isEventMember, isEventMember));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isEventMember));

  @JsonKey(ignore: true)
  @override
  _$$IsEventMemberLoadedCopyWith<_$IsEventMemberLoaded> get copyWith =>
      __$$IsEventMemberLoadedCopyWithImpl<_$IsEventMemberLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(bool isEventMember) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(isEventMember);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isEventMember)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(isEventMember);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isEventMember)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isEventMember);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsEventMemberInit value) init,
    required TResult Function(IsEventMemberLoading value) loading,
    required TResult Function(IsEventMemberLoaded value) loaded,
    required TResult Function(IsEventMemberError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsEventMemberInit value)? init,
    TResult Function(IsEventMemberLoading value)? loading,
    TResult Function(IsEventMemberLoaded value)? loaded,
    TResult Function(IsEventMemberError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsEventMemberInit value)? init,
    TResult Function(IsEventMemberLoading value)? loading,
    TResult Function(IsEventMemberLoaded value)? loaded,
    TResult Function(IsEventMemberError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class IsEventMemberLoaded implements IsEventMemberState {
  const factory IsEventMemberLoaded(final bool isEventMember) =
      _$IsEventMemberLoaded;

  bool get isEventMember => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$IsEventMemberLoadedCopyWith<_$IsEventMemberLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsEventMemberErrorCopyWith<$Res> {
  factory _$$IsEventMemberErrorCopyWith(_$IsEventMemberError value,
          $Res Function(_$IsEventMemberError) then) =
      __$$IsEventMemberErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$IsEventMemberErrorCopyWithImpl<$Res>
    extends _$IsEventMemberStateCopyWithImpl<$Res>
    implements _$$IsEventMemberErrorCopyWith<$Res> {
  __$$IsEventMemberErrorCopyWithImpl(
      _$IsEventMemberError _value, $Res Function(_$IsEventMemberError) _then)
      : super(_value, (v) => _then(v as _$IsEventMemberError));

  @override
  _$IsEventMemberError get _value => super._value as _$IsEventMemberError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$IsEventMemberError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsEventMemberError implements IsEventMemberError {
  const _$IsEventMemberError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'IsEventMemberState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsEventMemberError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$IsEventMemberErrorCopyWith<_$IsEventMemberError> get copyWith =>
      __$$IsEventMemberErrorCopyWithImpl<_$IsEventMemberError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(bool isEventMember) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isEventMember)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(bool isEventMember)? loaded,
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
    required TResult Function(IsEventMemberInit value) init,
    required TResult Function(IsEventMemberLoading value) loading,
    required TResult Function(IsEventMemberLoaded value) loaded,
    required TResult Function(IsEventMemberError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IsEventMemberInit value)? init,
    TResult Function(IsEventMemberLoading value)? loading,
    TResult Function(IsEventMemberLoaded value)? loaded,
    TResult Function(IsEventMemberError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsEventMemberInit value)? init,
    TResult Function(IsEventMemberLoading value)? loading,
    TResult Function(IsEventMemberLoaded value)? loaded,
    TResult Function(IsEventMemberError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class IsEventMemberError implements IsEventMemberState {
  const factory IsEventMemberError(final String message) = _$IsEventMemberError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$IsEventMemberErrorCopyWith<_$IsEventMemberError> get copyWith =>
      throw _privateConstructorUsedError;
}
