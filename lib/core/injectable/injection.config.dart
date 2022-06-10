// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../app/features/auth/infrastracture/auth_datasource.dart' as _i6;
import 'injectable_container.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final externalModules = _$ExternalModules();
  gh.lazySingleton<_i3.Dio>(() => externalModules.dio);
  gh.lazySingleton<_i4.InternetConnectionChecker>(
      () => externalModules.internetConnectionChecker);
  await gh.factoryAsync<_i5.SharedPreferences>(
      () => externalModules.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i6.AuthDataSource>(
      () => _i6.RemoteDataSourceImpl(get<_i3.Dio>()));
  return get;
}

class _$ExternalModules extends _i7.ExternalModules {}
