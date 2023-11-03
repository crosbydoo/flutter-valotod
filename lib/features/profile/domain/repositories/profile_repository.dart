import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileEntity>> getProfile(NoParams params);
}
