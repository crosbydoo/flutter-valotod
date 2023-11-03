import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/bundles/domain/entities/bundle_entity.dart';

abstract class BundleRepository {
  Future<Either<Failure, BundleEntity>> getBundles(NoParams params);
}
