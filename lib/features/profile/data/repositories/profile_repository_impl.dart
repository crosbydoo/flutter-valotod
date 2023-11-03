import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/profile/data/datasources/profile_remote_datasources.dart';
import 'package:valotod_app/features/profile/domain/entities/profile_entity.dart';
import 'package:valotod_app/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this.remoteDatasource);

  final ProfileRemoteDatasource remoteDatasource;

  @override
  Future<Either<Failure, ProfileEntity>> getProfile(NoParams params) async {
    try {
      final remoteProfile = await remoteDatasource.getProfile();
      print('check response $remoteProfile');

      return Right(remoteProfile);
    } on DioException catch (e) {
      print('check $e');
      return Left(
        ServerFailure.fromJson(e.response!.data as Map<String, dynamic>),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
