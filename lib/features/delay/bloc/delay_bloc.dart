import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitm4/features/delay/bloc/events_delay_bloc.dart';
import 'package:mitm4/features/delay/bloc/states_delay_bloc.dart';
import 'package:mitm4/features/delay/model/delayMode.dart';
import '../model/delay.dart';
import '../service/delay_service.dart';
import '../../../core/get_it.dart';

class DelayBloc extends Bloc<LoadDelaysForStationEvent, FetchResults?> {
  final Map<String, List<TrainDelay>> _cache = {};
  final DelayService ds;
  DelayBloc({required this.ds}) : super(const FetchResults.empty()) {
    on<LoadDelaysForStationEvent>(
      (event, emit) async {
        final stationName = event.stationName;
        //wypierdzielić cache
        if (_cache.containsKey(stationName)) {
          final cachedDelayes = _cache[stationName];
          final results = FetchResults(
            //Potencjalny Blad !!!! "!"

            delays: cachedDelayes,
          );
          emit(results);
        } else {
          DelayService ds = sl<DelayService>();
          final _delays = await ds.getDelaiedTrainsForStaion(stationName);
          final _cutedDelays = _delays.getOrElse(() => []);
          final pom = _cutedDelays[0].trainNumber;
          _cache[stationName] = _cutedDelays;
          final results = FetchResults(
            delays: _cutedDelays,
          );
          log('FeetchResults _dalyes[0].trainnumber: $pom');
          emit(results);
        }
      },
    );
  }
}
