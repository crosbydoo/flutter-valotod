import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/bundles/data/datasources/bundle_datasources.dart';
import 'package:valotod_app/features/bundles/domain/entities/bundle_entity.dart';
import 'package:valotod_app/features/bundles/domain/repositories/bundle_repository.dart';

class BundleRepositoryImpl implements BundleRepository {
  BundleRepositoryImpl(this.remoteDatasource);

  final BundleRemoteDatasource remoteDatasource;

  @override
  Future<Either<Failure, BundleEntity>> getBundles(NoParams params) async {
    try {
      final remoteMapsData = await remoteDatasource.getBundles();
      return Right(remoteMapsData);
    } on DioException catch (e) {
      return Left(
        ServerFailure.fromJson(e.response!.data as Map<String, dynamic>),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
