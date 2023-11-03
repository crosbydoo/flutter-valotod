part of 'weapon_cubit.dart';

abstract class WeaponState {}

final class WeaponInitial extends WeaponState {}

final class WeaponLoading extends WeaponState {}

final class WeaponSuccess extends WeaponState {
  WeaponSuccess(this.result);

  final WeaponEntity result;
}

final class WeaponDetailSuccess extends WeaponState {
  WeaponDetailSuccess(this.result);

  final WeaponDetailEntity result;
}

final class WeaponFailure extends WeaponState {
  WeaponFailure(this.message);

  final String message;
}
