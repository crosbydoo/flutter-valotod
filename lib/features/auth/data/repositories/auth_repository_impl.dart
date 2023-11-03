import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:valotod_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:valotod_app/features/auth/data/models/request/login_body.dart';
import 'package:valotod_app/features/auth/data/models/request/register_body.dart';
import 'package:valotod_app/features/auth/domain/entities/login_entity.dart';
import 'package:valotod_app/features/auth/domain/entities/register_entity.dart';
import 'package:valotod_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.remoteDataSource, this.localDataSource);

  final AuthRemoteDatasource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  @override
  Future<Either<Failure, LoginEntity>> login(LoginBody body) async {
    try {
      final remoteLogin = await remoteDataSource.login(body);
      final bearerToken = remoteLogin.userToken;
      final nameUser = remoteLogin.fullname;
      final photoProfile = remoteLogin.imageProfile;
      final userUuid = remoteLogin.id;

      print('halo $bearerToken');
      await localDataSource.saveName(nameUser);
      await localDataSource.saveBearerToken(bearerToken);
      await localDataSource.saveUserId(userUuid);
      await localDataSource.savePhotoProfile(photoProfile);

      print('HALO $nameUser');

      return Right(remoteLogin);
    } on DioException catch (e) {
      return Left(
        ServerFailure.fromJson(e.response!.data as Map<String, dynamic>),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, RegisterEntity>> register(RegisterBody body) async {
    try {
      final remoteRegister = await remoteDataSource.register(body);

      return Right(remoteRegister);
    } on DioException catch (e) {
      return Left(
        ServerFailure.fromJson(e.response!.data as Map<String, dynamic>),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
