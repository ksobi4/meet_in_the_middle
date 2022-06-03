import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:mitm4/core/http_client.dart';
import 'package:mitm4/features/delay/model/delay.dart';

import '../../../core/config/config.dart';
import '../../../core/errors/failure.dart';

class DelayService {
  HttpClient client;
  DelayService({
    required this.client,
  });

  final db = FirebaseDatabase.instance;

  Future<Either<Failure, List<TrainDelay>>> getDelaiedTrainsForStaion(
      String stationName) async {
    try {
      Response res = await client.dio.get('$baseDelayUrl/$stationName');
      if (res.statusCode == 200) {
        var list = res.data;
        List<TrainDelay> outputList = [];
        for (var delay in list) {
          outputList.add(TrainDelay.fromJson(jsonEncode(delay)));
        }
        return Right(outputList);
      } else {
        return Left(Failure('cs'));
      }
    } catch (e) {
      log('DELAY SERVICE getDelaiedTrainsForStaion ${e.toString()}');
      return Left(Failure(e.toString()));
    }
  }
}
