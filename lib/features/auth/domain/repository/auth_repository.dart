import 'package:fpdart/fpdart.dart';
import 'package:blog_app/core/error/failures.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String password,
    required String email,
  });

  Future<Either<Failure, String>> loginWithEmailPassword({
    required String password,
    required String email,
  });
}
