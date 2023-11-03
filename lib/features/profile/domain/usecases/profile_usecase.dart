import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/profile/domain/entities/profile_entity.dart';
import 'package:valotod_app/features/profile/domain/repositories/profile_repository.dart';

class ProfileUsecase extends UseCase<ProfileEntity, NoParams> {
  ProfileUsecase(this.repository);

  final ProfileRepository repository;

  @override
  Future<Either<Failure, ProfileEntity>> call(NoParams params) {
    return repository.getProfile(params);
  }
}
