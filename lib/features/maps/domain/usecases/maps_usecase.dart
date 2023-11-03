import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_entity.dart';
import 'package:valotod_app/features/maps/domain/repositories/maps_repository.dart';

class MapsUsecase extends UseCase<MapsEntity, NoParams> {
  MapsUsecase(this.repository);

  final MapsRepository repository;

  @override
  Future<Either<Failure, MapsEntity>> call(NoParams params) {
    return repository.getMaps(params);
  }
}
