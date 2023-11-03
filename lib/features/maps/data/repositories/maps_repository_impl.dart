import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/maps/data/datasources/maps_remote_datasources.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_detail_entity.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_entity.dart';
import 'package:valotod_app/features/maps/domain/repositories/maps_repository.dart';

class MapsRepositoryImpl implements MapsRepository {
  MapsRepositoryImpl(this.remoteDatasource);

  final MapsRemoteDatasource remoteDatasource;

  @override
  Future<Either<Failure, MapsEntity>> getMaps(NoParams params) async {
    try {
      final remoteMapsData = await remoteDatasource.getMaps();
      return Right(remoteMapsData);
    } on DioException catch (e) {
      return Left(
        ServerFailure.fromJson(e.response!.data as Map<String, dynamic>),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MapsDetailEntity>> getMapsDetail(String uuid) async {
    try {
      final remoteMapsDetailData = await remoteDatasource.getMapsDetail(uuid);

      return Right(remoteMapsDetailData);
    } on DioException catch (e) {
      return Left(
        ServerFailure.fromJson(e.response!.data as Map<String, dynamic>),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
