import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:preskriber/app/features/auth/domain/auth_failure.dart';
import 'package:preskriber/app/features/auth/domain/user_entity.dart';
import 'package:preskriber/app/features/auth/infrastracture/token_model.dart';
import 'package:preskriber/app/features/auth/infrastracture/user_model.dart';

import '../../../../core/api/api_base.dart';
import '../../patients/domain/value_objects.dart';

abstract class AuthDataSource {
  Future<UserModel> login(
    UserEntity userEntity,
  );
  Future<UserModel> signup({
    required UserEntity userEntity,
  });

  Future<void> resetPassword(EmailAddress email);
}

@LazySingleton(as: AuthDataSource)
class RemoteDataSourceImpl implements AuthDataSource {
  final Dio dio;

  RemoteDataSourceImpl(this.dio);

  @override
  Future<UserModel> login(UserEntity userEntity) async {
    loginEndpoint;
    try {
      final response = await dio.post(loginEndpoint,
          data: {
            'email': userEntity.emailAddress,
            'password': userEntity.password,
            'device_name': userEntity.device_name,
            'device_type': userEntity.device_type,
            'device_token': userEntity.device_token,
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
          }));

      if (response.statusCode == 200) {
        TokenModel.fromJson(
          json.decode(response.data.payload),
        );
      }

      return UserModel.fromJson(
        json.decode(response.data),
      );
    } on DioError catch (e) {
      debugPrint('Status Code error: ${e.response?.statusCode.toString()}');
      if (e.message == 'Password incorrect' ||
          e.message == 'You do not have an account') {
        throw const AuthFailure.serverError();
      } else {
        throw const AuthFailure.internetNetworkFailed();
      }
    }
  }

  @override
  Future<void> resetPassword(EmailAddress email) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signup({required UserEntity userEntity}) async {
    loginEndpoint;
    try {
      final response = await dio.post(loginEndpoint,
          data: {
            'email': userEntity.emailAddress,
            'name': userEntity.fullName,
            'password': userEntity.password,
            'device_name': userEntity.device_name,
            'device_type': userEntity.device_type,
            'device_token': userEntity.device_token,
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
          }));

      if (response.statusCode == 200) {
        TokenModel.fromJson(
          json.decode(response.data.payload),
        );
      }

      return UserModel.fromJson(
        json.decode(response.data),
      );
    } on DioError catch (e) {
      debugPrint('Status Code error: ${e.response?.statusCode.toString()}');
      if (e.message == 'Password incorrect' ||
          e.message == 'You do not have an account') {
        throw const AuthFailure.serverError();
      } else {
        throw const AuthFailure.internetNetworkFailed();
      }
    }
  }
}
