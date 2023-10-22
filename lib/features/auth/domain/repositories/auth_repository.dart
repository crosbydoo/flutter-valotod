import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/features/auth/data/models/request/login_body.dart';
import 'package:valotod_app/features/auth/data/models/request/register_body.dart';
import 'package:valotod_app/features/auth/domain/entities/login_entity.dart';
import 'package:valotod_app/features/auth/domain/entities/register_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginEntity>> login(LoginBody body);
  Future<Either<Failure, RegisterEntity>> register(RegisterBody body);
}
