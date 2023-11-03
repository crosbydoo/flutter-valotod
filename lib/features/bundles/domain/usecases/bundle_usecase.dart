import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/bundles/domain/entities/bundle_entity.dart';
import 'package:valotod_app/features/bundles/domain/repositories/bundle_repository.dart';

class BundleUsecase extends UseCase<BundleEntity, NoParams> {
  BundleUsecase(this.repository);

  final BundleRepository repository;

  @override
  Future<Either<Failure, BundleEntity>> call(NoParams params) {
    return repository.getBundles(params);
  }
}
