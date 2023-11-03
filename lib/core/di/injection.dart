import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:valotod_app/core/env/env_config.dart';
import 'package:valotod_app/core/network/dio_handler.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';
import 'package:valotod_app/features/armory/data/datasources/agent_remote_datasources.dart';
import 'package:valotod_app/features/armory/data/datasources/weapon_remote_datasources.dart';
import 'package:valotod_app/features/armory/data/repositories/agent_repository_impl.dart';
import 'package:valotod_app/features/armory/data/repositories/weapon_repository_impl.dart';
import 'package:valotod_app/features/armory/domain/repositories/agent_repository.dart';
import 'package:valotod_app/features/armory/domain/repositories/weapon_repository.dart';
import 'package:valotod_app/features/armory/domain/usecases/agent_detail_usecase.dart';
import 'package:valotod_app/features/armory/domain/usecases/agent_usecase.dart';
import 'package:valotod_app/features/armory/domain/usecases/weapon_detail_usecase.dart';
import 'package:valotod_app/features/armory/domain/usecases/weapon_usecase.dart';
import 'package:valotod_app/features/armory/presentation/cubit/agent/agent_cubit.dart';
import 'package:valotod_app/features/armory/presentation/cubit/weapon/weapon_cubit.dart';
import 'package:valotod_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:valotod_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:valotod_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:valotod_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:valotod_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:valotod_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:valotod_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:valotod_app/features/bundles/data/datasources/bundle_datasources.dart';
import 'package:valotod_app/features/bundles/data/repositories/bundle_repository_impl.dart';
import 'package:valotod_app/features/bundles/domain/repositories/bundle_repository.dart';
import 'package:valotod_app/features/bundles/domain/usecases/bundle_usecase.dart';
import 'package:valotod_app/features/bundles/presentation/cubit/bundles_cubit.dart';
import 'package:valotod_app/features/chat/data/datasources/chat_remote_datasources.dart';
import 'package:valotod_app/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:valotod_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:valotod_app/features/chat/domain/usecases/chat_usecase.dart';
import 'package:valotod_app/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:valotod_app/features/maps/data/datasources/maps_remote_datasources.dart';
import 'package:valotod_app/features/maps/data/repositories/maps_repository_impl.dart';
import 'package:valotod_app/features/maps/domain/repositories/maps_repository.dart';
import 'package:valotod_app/features/maps/domain/usecases/maps_detail_usecase.dart';
import 'package:valotod_app/features/maps/domain/usecases/maps_usecase.dart';
import 'package:valotod_app/features/maps/presentation/cubit/maps_cubit.dart';
import 'package:valotod_app/features/profile/data/datasources/profile_remote_datasources.dart';
import 'package:valotod_app/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:valotod_app/features/profile/domain/repositories/profile_repository.dart';
import 'package:valotod_app/features/profile/domain/usecases/profile_usecase.dart';
import 'package:valotod_app/features/profile/presentation/cubit/profile_cubit.dart';

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
      )

      //MAPS
      ..registerLazySingleton<MapsRemoteDatasource>(
        () => MapsRemoteDatasourceImpl(sl<Dio>()),
      )
      ..registerLazySingleton<MapsRepository>(
        () => MapsRepositoryImpl(
          sl(),
        ),
      )
      ..registerLazySingleton(() => MapsUsecase(sl()))
      ..registerLazySingleton(() => MapsDetailUsecase(sl()))
      ..registerFactory(
        () => MapsCubit(
          sl(),
          sl(),
        ),
      )

      //AGENTS
      ..registerLazySingleton<AgentRemoteDatasource>(
        () => AgentRemoteDatasourceImpl(sl<Dio>()),
      )
      ..registerLazySingleton<AgentRepository>(
        () => AgentRepositoryImpl(
          sl(),
        ),
      )
      ..registerLazySingleton(() => AgentUsecase(sl()))
      ..registerLazySingleton(() => AgentDetailUsecase(sl()))
      ..registerFactory(
        () => AgentCubit(
          sl(),
          sl(),
        ),
      )

      //WEAPONS
      ..registerLazySingleton<WeaponRemoteDatasource>(
        () => WeaponRemoteDatasourceImpl(sl<Dio>()),
      )
      ..registerLazySingleton<WeaponRepository>(
        () => WeaponRepositoryImpl(
          sl(),
        ),
      )
      ..registerLazySingleton(() => WeaponUsecase(sl()))
      ..registerLazySingleton(() => WeaponDetailUsecase(sl()))
      ..registerFactory(
        () => WeaponCubit(
          sl(),
          sl(),
        ),
      )

      //BUNDLES
      ..registerLazySingleton<BundleRemoteDatasource>(
        () => BundleRemoteDatasourceImpl(sl<Dio>()),
      )
      ..registerLazySingleton<BundleRepository>(
        () => BundleRepositoryImpl(
          sl(),
        ),
      )
      ..registerLazySingleton(() => BundleUsecase(sl()))
      // ..registerLazySingleton(() => AgentDetailUsecase(sl()))
      ..registerFactory(
        () => BundlesCubit(
          sl(),
        ),
      )

      //PROFILE
      ..registerLazySingleton<ProfileRemoteDatasource>(
        () => ProfileRemoteDatasourceImpl(sl<Dio>()),
      )
      ..registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImpl(
          sl(),
        ),
      )
      ..registerLazySingleton(() => ProfileUsecase(sl()))
      ..registerFactory(
        () => ProfileCubit(
          sl(),
        ),
      )

      //CHAT
      ..registerLazySingleton<ChatRemoteDatasource>(
        () => ChatRemoteDatasourceImpl(sl<Dio>()),
      )
      ..registerLazySingleton<ChatRepository>(
        () => ChatRepositoryImpl(
          sl(),
        ),
      )
      ..registerLazySingleton(() => ChatUsecase(sl()))
      ..registerFactory(
        () => ChatCubit(
          sl(),
        ),
      );
  }
}
