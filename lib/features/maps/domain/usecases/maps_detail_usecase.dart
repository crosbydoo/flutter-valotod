import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_detail_entity.dart';
import 'package:valotod_app/features/maps/domain/repositories/maps_repository.dart';

class MapsDetailUsecase extends UseCase<MapsDetailEntity, String> {
  MapsDetailUsecase(this.repository);

  final MapsRepository repository;

  @override
  Future<Either<Failure, MapsDetailEntity>> call(String params) {
    return repository.getMapsDetail(params);
  }
}
