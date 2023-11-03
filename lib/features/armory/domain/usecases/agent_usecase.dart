import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_entity.dart';
import 'package:valotod_app/features/armory/domain/repositories/agent_repository.dart';

class AgentUsecase extends UseCase<AgentEntity, NoParams> {
  AgentUsecase(this.repository);

  final AgentRepository repository;

  @override
  Future<Either<Failure, AgentEntity>> call(NoParams params) {
    return repository.getAgents(params);
  }
}
