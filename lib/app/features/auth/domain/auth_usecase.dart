import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:preskriber/app/features/auth/domain/auth_failure.dart';
import 'package:preskriber/app/features/auth/domain/user_entity.dart';

import 'i_auth_repo.dart';

@lazySingleton
class UserUseCaseLogin {
  final AuthRepository authRepository;

  UserUseCaseLogin(this.authRepository);

  Future<Either<AuthFailure, UserEntity>> call(UserEntity userEntity) async {
    return authRepository.loginUser(userEntity);
  }
}
