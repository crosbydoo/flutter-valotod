import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_detail_entity.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_entity.dart';

abstract class AgentRepository {
  Future<Either<Failure, AgentDetailEntity>> getAgentDetail(String uuid);
  Future<Either<Failure, AgentEntity>> getAgents(NoParams params);
}
