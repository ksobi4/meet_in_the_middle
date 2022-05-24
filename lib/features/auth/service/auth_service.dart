import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/errors/failure.dart';
import 'auth_local_service.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth;
  final AuthLocalService _authLocalService;

  AuthService(
    this._firebaseAuth,
    this._authLocalService,
  );

  Future<Either<Failure, String>> login(String email, String password) async {
    try {
      Either<Failure, String> res = (await _authLocalService.getToken());
      return res.fold((failure) => _doRest(email, password), (r) => Right(r));
    } catch (e) {
      throw Failure(e.toString());
    }
  }

  Future<Either<Failure, String>> _doRest(String email, String password) async {
    try {
      UserCredential user = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      return user.user == null
          ? Left(Failure('can not login'))
          : Right(user.user!.uid);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
