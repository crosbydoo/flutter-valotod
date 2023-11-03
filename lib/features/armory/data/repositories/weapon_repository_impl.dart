import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/armory/data/datasources/weapon_remote_datasources.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_detail_entity.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_entity.dart';
import 'package:valotod_app/features/armory/domain/repositories/weapon_repository.dart';

class WeaponRepositoryImpl implements WeaponRepository {
  WeaponRepositoryImpl(this.remoteDatasource);

  final WeaponRemoteDatasource remoteDatasource;

  @override
  Future<Either<Failure, WeaponEntity>> getWeapons(NoParams params) async {
    try {
      final remoteAgentData = await remoteDatasource.getWeapons();

      print('halocheck $remoteAgentData');
      return Right(remoteAgentData);
    } on DioException catch (e) {
      return Left(
        ServerFailure.fromJson(e.response!.data as Map<String, dynamic>),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, WeaponDetailEntity>> getWeaponDetail(
    String uuid,
  ) async {
    try {
      final remoteWeaponDetailData =
          await remoteDatasource.getWeaponDetail(uuid);

      return Right(remoteWeaponDetailData);
    } on DioException catch (e) {
      return Left(
        ServerFailure.fromJson(e.response!.data as Map<String, dynamic>),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
