import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/auth/data/models/request/login_body.dart';
import 'package:valotod_app/features/auth/domain/entities/login_entity.dart';
import 'package:valotod_app/features/auth/domain/repositories/auth_repository.dart';

class LoginUsecase extends UseCase<LoginEntity, LoginBody> {
  LoginUsecase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, LoginEntity>> call(LoginBody params) {
    return repository.login(params);
  }
}
