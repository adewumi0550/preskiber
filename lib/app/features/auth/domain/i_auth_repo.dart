import 'package:dartz/dartz.dart';
import 'package:preskriber/app/features/auth/domain/user_entity.dart';

import 'auth_failure.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, UserEntity>> signUp(UserEntity userEntity);
  Future<Either<AuthFailure, UserEntity>> loginUser(UserEntity userEntity);
  Future<Either<AuthFailure, UserEntity>> getUser();
  Future<Either<AuthFailure, void>> resetPassword(UserEntity userEntity);
}
