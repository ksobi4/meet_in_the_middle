import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';

import '../../../core/config/hive.dart';
import '../../../core/errors/failure.dart';
import '../../../core/get_it.dart';

class AuthLocalService {
  Box box = sl.get<Box>();

  Future<Either<Failure, String>> getToken() async {
    try {
      final res = await box.get(CONST_SAVE_LOGIN);

      if (res == 'null') {
        return Left(Failure('There is no loged user'));
      } else {
        return Right(res);
      }
    } catch (e) {
      return Left(Failure('There is some error on getting cached user token'));
    }
  }

  Future<void> cacheToken(String token) async {
    try {
      await box.put(CONST_SAVE_LOGIN, token);
    } catch (e) {
      throw Failure(e.toString());
    }
  }

  Future<void> logOut() async {
    try {
      await box.delete(CONST_SAVE_LOGIN);
    } catch (e) {
      throw Failure(e.toString());
    }
  }
}
