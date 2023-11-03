import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_detail_entity.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_entity.dart';

abstract class WeaponRepository {
  Future<Either<Failure, WeaponDetailEntity>> getWeaponDetail(String uuid);
  Future<Either<Failure, WeaponEntity>> getWeapons(NoParams params);
}
