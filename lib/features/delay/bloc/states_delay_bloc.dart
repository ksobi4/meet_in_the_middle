import 'package:flutter/foundation.dart' show immutable;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitm4/features/delay/model/delay.dart';
import 'package:mitm4/features/delay/model/delayMode.dart';

@immutable
abstract class DelayState {
  const DelayState();
}

@immutable
class FetchResults implements DelayState {
  final List<TrainDelay>? delays;

  const FetchResults.empty({
    this.delays = null,
  });

  const FetchResults({
    required this.delays,
  });
}

@immutable
class FetchResultsErrorState implements DelayState {
  final String errMess;

  const FetchResultsErrorState({
    required this.errMess,
  });
}

@immutable
class initDelayState implements DelayState {
  final List<TrainDelay>? delays;
  initDelayState({this.delays = null});
}
