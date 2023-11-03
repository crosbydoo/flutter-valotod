import 'package:bloc/bloc.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/profile/domain/entities/profile_entity.dart';
import 'package:valotod_app/features/profile/domain/usecases/profile_usecase.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.profileUsecase) : super(ProfileInitial());
  final ProfileUsecase profileUsecase;

  Future<void> getProfile() async {
    emit(ProfileLoading());

    final failureOrSuccess = await profileUsecase.call(NoParams());

    print('check $failureOrSuccess');

    if (isClosed) return;
    failureOrSuccess.fold(
      (error) => emit(ProfileFailure(error.message)),
      (data) => emit(ProfileSuccess(data)),
    );
  }
}
