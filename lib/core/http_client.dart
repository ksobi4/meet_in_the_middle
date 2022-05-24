import 'package:dio/dio.dart';

// import './config/config.dart' as config;

class HttpClient {
  String token = '';

  HttpClient();

  Dio dio = Dio(
    BaseOptions(
        // baseUrl: config.getStationUrl,
        headers: {
          'Content-Type': 'application/json',
        }, contentType: 'application/json'),
  );

  void setToken(String token1) {
    token = token1;
  }

  // Options get postOptions {
  //   return Options(headers: {'Authorization': 'Bearer $token'});
  // }
}
