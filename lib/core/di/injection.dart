import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:valotod_app/core/env/env_config.dart';
import 'package:valotod_app/core/network/dio_handler.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';
import 'package:valotod_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:valotod_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:valotod_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:valotod_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:valotod_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:valotod_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:valotod_app/features/auth/presentation/cubit/auth_cubit.dart';

final sl = GetIt.instance;

class Injections {
  Future<void> init() async {
    final config = await EnvConfig.getInstance();
    final prefs = await SharedPrefs.getInstance();

    // flavor, prefs, dio, etc
    sl
      ..registerLazySingleton(() => config)
      ..registerLazySingleton(() => prefs)
      ..registerLazySingleton<Dio>(() => sl<DioHandler>().dio)
      ..registerLazySingleton(
        () => DioHandler(
          config: sl<EnvConfig>(),
          preferences: sl<SharedPrefs>(),
        ),
      )

      // AUTH
      ..registerLazySingleton<AuthRemoteDatasource>(
        () => AuthRemoteDatasourceImpl(sl<Dio>()),
      )
      ..registerLazySingleton<AuthLocalDataSource>(
        () => AuthLocalDataSourceImpl(sl<SharedPrefs>()),
      )
      ..registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(
          sl<AuthRemoteDatasource>(),
          sl<AuthLocalDataSource>(),
        ),
      )
      ..registerLazySingleton(() => LoginUsecase(sl()))
      ..registerLazySingleton(() => RegisterUsecase(sl()))
      ..registerFactory(
        () => AuthCubit(
          sl(),
          sl(),
        ),
      );
  }
}
