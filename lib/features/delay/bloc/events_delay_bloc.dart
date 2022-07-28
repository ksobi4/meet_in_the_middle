import 'package:flutter/foundation.dart' show immutable;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/delayMode.dart';

@immutable
abstract class DelayEvent {
  const DelayEvent();
}

@immutable
class LoadDelaysForStationEvent implements DelayEvent {
  final String stationName;
  const LoadDelaysForStationEvent({required this.stationName}) : super();
}

@immutable
class switchDelayModeEvent implements DelayEvent {
  final delayMode;
  const switchDelayModeEvent({required this.delayMode}) : super();
}
