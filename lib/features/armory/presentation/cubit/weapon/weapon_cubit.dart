import 'package:bloc/bloc.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_detail_entity.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_entity.dart';
import 'package:valotod_app/features/armory/domain/usecases/weapon_detail_usecase.dart';
import 'package:valotod_app/features/armory/domain/usecases/weapon_usecase.dart';

part 'weapon_state.dart';

class WeaponCubit extends Cubit<WeaponState> {
  WeaponCubit(this.weaponUsecase, this.weaponDetailUsecase)
      : super(WeaponInitial());

  final WeaponUsecase weaponUsecase;
  final WeaponDetailUsecase weaponDetailUsecase;

  Future<void> getWeapons() async {
    emit(WeaponLoading());

    final failureOrSuccess = await weaponUsecase.call(NoParams());
    print('check failure $failureOrSuccess');

    if (isClosed) return;
    failureOrSuccess.fold(
      (error) => emit(WeaponFailure(error.message)),
      (data) => emit(WeaponSuccess(data)),
    );
  }

  Future<void> getWeaponDetail(String uuid) async {
    emit(WeaponLoading());

    final failureOrSuccess = await weaponDetailUsecase.call(uuid);

    failureOrSuccess.fold(
      (error) => emit(WeaponFailure(error.message)),
      (data) => emit(WeaponDetailSuccess(data)),
    );
  }
}
