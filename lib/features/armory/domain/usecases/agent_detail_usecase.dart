import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_detail_entity.dart';
import 'package:valotod_app/features/armory/domain/repositories/agent_repository.dart';

class AgentDetailUsecase extends UseCase<AgentDetailEntity, String> {
  AgentDetailUsecase(this.repository);

  final AgentRepository repository;

  @override
  Future<Either<Failure, AgentDetailEntity>> call(String params) {
    return repository.getAgentDetail(params);
  }
}
