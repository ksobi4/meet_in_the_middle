import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mitm4/core/errors/failure.dart';

import '../../../core/config/config.dart';
import '../../../core/http_client.dart';
import '../model/transfers.dart';

class HomeService {
  HttpClient client;
  HomeService({
    required this.client,
  });

  Future<List<String>> getStations(String stringPart) async {
    try {
      Response res = await client.dio.get('$getStationUrl$stringPart');
      if (res.statusCode == 200) {
        List<String> list = [];

        var data1 = res.data;
        for (var el in data1) {
          list.add(el['Nazwa'].toString());
        }

        return list;
      } else {
        return ['wystąpił błąd podczas pobierania stacji'];
      }
    } catch (e) {
      log('Home service error: ${e.toString()}');
      return [];
    }
  }

  Future<Either<Failure, Transfers>> getTransfers(
      String startStation, String endStataion, String date, String time) async {
    try {
      String url =
          '$baseUrl/${_rebuildStaiton(startStation)}/${_rebuildStaiton(endStataion)}/$date/$time';
      log('link = $url');
      Response res =
          await client.dio.get(url, options: Options(receiveTimeout: 15000));
      var string = jsonEncode(res.data['data']);
      return Right(Transfers.fromJson(string));
    } catch (e) {
      return Left(Failure('HOME SERVICE GET TRANSFER ${e.toString()}'));
    }
  }
}

String _rebuildStaiton(String station) {
  station = station.replaceAll(r' ', '-');
  station = station.replaceAll(r'ł', 'l');
  station = station.replaceAll(r'ó', 'o');
  log('station = $station');
  return station;
}
