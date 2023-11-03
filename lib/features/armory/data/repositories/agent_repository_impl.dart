import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/armory/data/datasources/agent_remote_datasources.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_detail_entity.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_entity.dart';
import 'package:valotod_app/features/armory/domain/repositories/agent_repository.dart';

class AgentRepositoryImpl implements AgentRepository {
  AgentRepositoryImpl(this.remoteDatasource);

  final AgentRemoteDatasource remoteDatasource;

  @override
  Future<Either<Failure, AgentEntity>> getAgents(NoParams params) async {
    try {
      final remoteAgentData = await remoteDatasource.getAgents();
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
  Future<Either<Failure, AgentDetailEntity>> getAgentDetail(String uuid) async {
    try {
      final remoteAgentData = await remoteDatasource.getAgentDetail(uuid);
      print('halo halo$remoteAgentData');
      return Right(remoteAgentData);
    } on DioException catch (e) {
      return Left(
        ServerFailure.fromJson(e.response!.data as Map<String, dynamic>),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
