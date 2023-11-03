import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_entity.dart';
import 'package:valotod_app/features/armory/domain/repositories/weapon_repository.dart';

class WeaponUsecase extends UseCase<WeaponEntity, NoParams> {
  WeaponUsecase(this.repository);

  final WeaponRepository repository;

  @override
  Future<Either<Failure, WeaponEntity>> call(NoParams params) {
    return repository.getWeapons(params);
  }
}
