import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/auth/data/models/request/register_body.dart';
import 'package:valotod_app/features/auth/domain/entities/register_entity.dart';
import 'package:valotod_app/features/auth/domain/repositories/auth_repository.dart';

class RegisterUsecase extends UseCase<RegisterEntity, RegisterBody> {
  RegisterUsecase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, RegisterEntity>> call(RegisterBody params) {
    return repository.register(params);
  }
}
