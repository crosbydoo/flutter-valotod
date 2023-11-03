import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_detail_entity.dart';
import 'package:valotod_app/features/armory/domain/repositories/weapon_repository.dart';

class WeaponDetailUsecase extends UseCase<WeaponDetailEntity, String> {
  WeaponDetailUsecase(this.repository);

  final WeaponRepository repository;

  @override
  Future<Either<Failure, WeaponDetailEntity>> call(String params) {
    return repository.getWeaponDetail(params);
  }
}
