import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_detail_entity.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_entity.dart';

abstract class MapsRepository {
  Future<Either<Failure, MapsEntity>> getMaps(NoParams params);
  Future<Either<Failure, MapsDetailEntity>> getMapsDetail(String uuid);
}
