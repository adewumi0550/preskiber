import 'package:dartz/dartz.dart';
import 'package:preskriber/app/features/auth/domain/user_entity.dart';

import '../../../../core/network/network.dart';
import '../domain/auth_failure.dart';
import '../domain/i_auth_repo.dart';
import 'auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final RemoteDataSourceImpl remoteDataSource;
  final NetworkInfo networkInfo;
  @override
  Future<Either<AuthFailure, UserEntity>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  AuthRepositoryImpl(this.remoteDataSource, this.networkInfo);

  @override
  Future<Either<AuthFailure, UserEntity>> loginUser(
      UserEntity userEntity) async {
    // TODO: implement loginUser
    if (await networkInfo.isConnected) {
      final useEntity = await remoteDataSource.login(userEntity);
      return right(useEntity);
    } else {
      return left(const AuthFailure.internetNetworkFailed());
    }
  }

  @override
  Future<Either<AuthFailure, void>> resetPassword(UserEntity userEntity) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, UserEntity>> signUp(UserEntity userEntity) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
