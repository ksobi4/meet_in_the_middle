// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'train_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrainEventsEvent {
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
    required TResult Function(TrainEventsGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainEventsGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainEventsGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainEventsEventCopyWith<TrainEventsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainEventsEventCopyWith<$Res> {
  factory $TrainEventsEventCopyWith(
          TrainEventsEvent value, $Res Function(TrainEventsEvent) then) =
      _$TrainEventsEventCopyWithImpl<$Res>;
  $Res call({Train train});
}

/// @nodoc
class _$TrainEventsEventCopyWithImpl<$Res>
    implements $TrainEventsEventCopyWith<$Res> {
  _$TrainEventsEventCopyWithImpl(this._value, this._then);

  final TrainEventsEvent _value;
  // ignore: unused_field
  final $Res Function(TrainEventsEvent) _then;

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
abstract class _$$TrainEventsGetCopyWith<$Res>
    implements $TrainEventsEventCopyWith<$Res> {
  factory _$$TrainEventsGetCopyWith(
          _$TrainEventsGet value, $Res Function(_$TrainEventsGet) then) =
      __$$TrainEventsGetCopyWithImpl<$Res>;
  @override
  $Res call({Train train});
}

/// @nodoc
class __$$TrainEventsGetCopyWithImpl<$Res>
    extends _$TrainEventsEventCopyWithImpl<$Res>
    implements _$$TrainEventsGetCopyWith<$Res> {
  __$$TrainEventsGetCopyWithImpl(
      _$TrainEventsGet _value, $Res Function(_$TrainEventsGet) _then)
      : super(_value, (v) => _then(v as _$TrainEventsGet));

  @override
  _$TrainEventsGet get _value => super._value as _$TrainEventsGet;

  @override
  $Res call({
    Object? train = freezed,
  }) {
    return _then(_$TrainEventsGet(
      train == freezed
          ? _value.train
          : train // ignore: cast_nullable_to_non_nullable
              as Train,
    ));
  }
}

/// @nodoc

class _$TrainEventsGet implements TrainEventsGet {
  const _$TrainEventsGet(this.train);

  @override
  final Train train;

  @override
  String toString() {
    return 'TrainEventsEvent.get(train: $train)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainEventsGet &&
            const DeepCollectionEquality().equals(other.train, train));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(train));

  @JsonKey(ignore: true)
  @override
  _$$TrainEventsGetCopyWith<_$TrainEventsGet> get copyWith =>
      __$$TrainEventsGetCopyWithImpl<_$TrainEventsGet>(this, _$identity);

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
    required TResult Function(TrainEventsGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainEventsGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainEventsGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class TrainEventsGet implements TrainEventsEvent {
  const factory TrainEventsGet(final Train train) = _$TrainEventsGet;

  @override
  Train get train => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$TrainEventsGetCopyWith<_$TrainEventsGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrainEventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<TrainEvent> eventList) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<TrainEvent> eventList)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<TrainEvent> eventList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainEventsInit value) init,
    required TResult Function(TrainEventsLoading value) loading,
    required TResult Function(TrainEventsLoaded value) loaded,
    required TResult Function(TrainEventsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainEventsInit value)? init,
    TResult Function(TrainEventsLoading value)? loading,
    TResult Function(TrainEventsLoaded value)? loaded,
    TResult Function(TrainEventsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainEventsInit value)? init,
    TResult Function(TrainEventsLoading value)? loading,
    TResult Function(TrainEventsLoaded value)? loaded,
    TResult Function(TrainEventsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainEventsStateCopyWith<$Res> {
  factory $TrainEventsStateCopyWith(
          TrainEventsState value, $Res Function(TrainEventsState) then) =
      _$TrainEventsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrainEventsStateCopyWithImpl<$Res>
    implements $TrainEventsStateCopyWith<$Res> {
  _$TrainEventsStateCopyWithImpl(this._value, this._then);

  final TrainEventsState _value;
  // ignore: unused_field
  final $Res Function(TrainEventsState) _then;
}

/// @nodoc
abstract class _$$TrainEventsInitCopyWith<$Res> {
  factory _$$TrainEventsInitCopyWith(
          _$TrainEventsInit value, $Res Function(_$TrainEventsInit) then) =
      __$$TrainEventsInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrainEventsInitCopyWithImpl<$Res>
    extends _$TrainEventsStateCopyWithImpl<$Res>
    implements _$$TrainEventsInitCopyWith<$Res> {
  __$$TrainEventsInitCopyWithImpl(
      _$TrainEventsInit _value, $Res Function(_$TrainEventsInit) _then)
      : super(_value, (v) => _then(v as _$TrainEventsInit));

  @override
  _$TrainEventsInit get _value => super._value as _$TrainEventsInit;
}

/// @nodoc

class _$TrainEventsInit implements TrainEventsInit {
  const _$TrainEventsInit();

  @override
  String toString() {
    return 'TrainEventsState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrainEventsInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<TrainEvent> eventList) loaded,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<TrainEvent> eventList)? loaded,
    TResult Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<TrainEvent> eventList)? loaded,
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
    required TResult Function(TrainEventsInit value) init,
    required TResult Function(TrainEventsLoading value) loading,
    required TResult Function(TrainEventsLoaded value) loaded,
    required TResult Function(TrainEventsError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainEventsInit value)? init,
    TResult Function(TrainEventsLoading value)? loading,
    TResult Function(TrainEventsLoaded value)? loaded,
    TResult Function(TrainEventsError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainEventsInit value)? init,
    TResult Function(TrainEventsLoading value)? loading,
    TResult Function(TrainEventsLoaded value)? loaded,
    TResult Function(TrainEventsError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TrainEventsInit implements TrainEventsState {
  const factory TrainEventsInit() = _$TrainEventsInit;
}

/// @nodoc
abstract class _$$TrainEventsLoadingCopyWith<$Res> {
  factory _$$TrainEventsLoadingCopyWith(_$TrainEventsLoading value,
          $Res Function(_$TrainEventsLoading) then) =
      __$$TrainEventsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrainEventsLoadingCopyWithImpl<$Res>
    extends _$TrainEventsStateCopyWithImpl<$Res>
    implements _$$TrainEventsLoadingCopyWith<$Res> {
  __$$TrainEventsLoadingCopyWithImpl(
      _$TrainEventsLoading _value, $Res Function(_$TrainEventsLoading) _then)
      : super(_value, (v) => _then(v as _$TrainEventsLoading));

  @override
  _$TrainEventsLoading get _value => super._value as _$TrainEventsLoading;
}

/// @nodoc

class _$TrainEventsLoading implements TrainEventsLoading {
  const _$TrainEventsLoading();

  @override
  String toString() {
    return 'TrainEventsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrainEventsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<TrainEvent> eventList) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<TrainEvent> eventList)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<TrainEvent> eventList)? loaded,
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
    required TResult Function(TrainEventsInit value) init,
    required TResult Function(TrainEventsLoading value) loading,
    required TResult Function(TrainEventsLoaded value) loaded,
    required TResult Function(TrainEventsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainEventsInit value)? init,
    TResult Function(TrainEventsLoading value)? loading,
    TResult Function(TrainEventsLoaded value)? loaded,
    TResult Function(TrainEventsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainEventsInit value)? init,
    TResult Function(TrainEventsLoading value)? loading,
    TResult Function(TrainEventsLoaded value)? loaded,
    TResult Function(TrainEventsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TrainEventsLoading implements TrainEventsState {
  const factory TrainEventsLoading() = _$TrainEventsLoading;
}

/// @nodoc
abstract class _$$TrainEventsLoadedCopyWith<$Res> {
  factory _$$TrainEventsLoadedCopyWith(
          _$TrainEventsLoaded value, $Res Function(_$TrainEventsLoaded) then) =
      __$$TrainEventsLoadedCopyWithImpl<$Res>;
  $Res call({List<TrainEvent> eventList});
}

/// @nodoc
class __$$TrainEventsLoadedCopyWithImpl<$Res>
    extends _$TrainEventsStateCopyWithImpl<$Res>
    implements _$$TrainEventsLoadedCopyWith<$Res> {
  __$$TrainEventsLoadedCopyWithImpl(
      _$TrainEventsLoaded _value, $Res Function(_$TrainEventsLoaded) _then)
      : super(_value, (v) => _then(v as _$TrainEventsLoaded));

  @override
  _$TrainEventsLoaded get _value => super._value as _$TrainEventsLoaded;

  @override
  $Res call({
    Object? eventList = freezed,
  }) {
    return _then(_$TrainEventsLoaded(
      eventList == freezed
          ? _value._eventList
          : eventList // ignore: cast_nullable_to_non_nullable
              as List<TrainEvent>,
    ));
  }
}

/// @nodoc

class _$TrainEventsLoaded implements TrainEventsLoaded {
  const _$TrainEventsLoaded(final List<TrainEvent> eventList)
      : _eventList = eventList;

  final List<TrainEvent> _eventList;
  @override
  List<TrainEvent> get eventList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventList);
  }

  @override
  String toString() {
    return 'TrainEventsState.loaded(eventList: $eventList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainEventsLoaded &&
            const DeepCollectionEquality()
                .equals(other._eventList, _eventList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_eventList));

  @JsonKey(ignore: true)
  @override
  _$$TrainEventsLoadedCopyWith<_$TrainEventsLoaded> get copyWith =>
      __$$TrainEventsLoadedCopyWithImpl<_$TrainEventsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<TrainEvent> eventList) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(eventList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<TrainEvent> eventList)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(eventList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<TrainEvent> eventList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(eventList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrainEventsInit value) init,
    required TResult Function(TrainEventsLoading value) loading,
    required TResult Function(TrainEventsLoaded value) loaded,
    required TResult Function(TrainEventsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainEventsInit value)? init,
    TResult Function(TrainEventsLoading value)? loading,
    TResult Function(TrainEventsLoaded value)? loaded,
    TResult Function(TrainEventsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainEventsInit value)? init,
    TResult Function(TrainEventsLoading value)? loading,
    TResult Function(TrainEventsLoaded value)? loaded,
    TResult Function(TrainEventsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TrainEventsLoaded implements TrainEventsState {
  const factory TrainEventsLoaded(final List<TrainEvent> eventList) =
      _$TrainEventsLoaded;

  List<TrainEvent> get eventList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TrainEventsLoadedCopyWith<_$TrainEventsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrainEventsErrorCopyWith<$Res> {
  factory _$$TrainEventsErrorCopyWith(
          _$TrainEventsError value, $Res Function(_$TrainEventsError) then) =
      __$$TrainEventsErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$TrainEventsErrorCopyWithImpl<$Res>
    extends _$TrainEventsStateCopyWithImpl<$Res>
    implements _$$TrainEventsErrorCopyWith<$Res> {
  __$$TrainEventsErrorCopyWithImpl(
      _$TrainEventsError _value, $Res Function(_$TrainEventsError) _then)
      : super(_value, (v) => _then(v as _$TrainEventsError));

  @override
  _$TrainEventsError get _value => super._value as _$TrainEventsError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TrainEventsError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TrainEventsError implements TrainEventsError {
  const _$TrainEventsError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TrainEventsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainEventsError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$TrainEventsErrorCopyWith<_$TrainEventsError> get copyWith =>
      __$$TrainEventsErrorCopyWithImpl<_$TrainEventsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<TrainEvent> eventList) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<TrainEvent> eventList)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<TrainEvent> eventList)? loaded,
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
    required TResult Function(TrainEventsInit value) init,
    required TResult Function(TrainEventsLoading value) loading,
    required TResult Function(TrainEventsLoaded value) loaded,
    required TResult Function(TrainEventsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrainEventsInit value)? init,
    TResult Function(TrainEventsLoading value)? loading,
    TResult Function(TrainEventsLoaded value)? loaded,
    TResult Function(TrainEventsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrainEventsInit value)? init,
    TResult Function(TrainEventsLoading value)? loading,
    TResult Function(TrainEventsLoaded value)? loaded,
    TResult Function(TrainEventsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TrainEventsError implements TrainEventsState {
  const factory TrainEventsError(final String message) = _$TrainEventsError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TrainEventsErrorCopyWith<_$TrainEventsError> get copyWith =>
      throw _privateConstructorUsedError;
}
