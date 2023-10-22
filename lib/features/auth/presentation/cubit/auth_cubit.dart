import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:valotod_app/features/auth/data/models/request/login_body.dart';
import 'package:valotod_app/features/auth/data/models/request/register_body.dart';
import 'package:valotod_app/features/auth/domain/entities/login_entity.dart';
import 'package:valotod_app/features/auth/domain/entities/register_entity.dart';
import 'package:valotod_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:valotod_app/features/auth/domain/usecases/register_usecase.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.loginUsecase, this.registerUsecase) : super(AuthInitial());

  LoginUsecase loginUsecase;
  RegisterUsecase registerUsecase;

  Future<void> login(LoginBody body) async {
    emit(AuthLoading());

    final failureOrSuccess = await loginUsecase.call(body);

    failureOrSuccess.fold(
      (error) => emit(AuthFailure(error.message)),
      (data) => emit(AuthLoginSuccess(data)),
    );
  }

  Future<void> register(RegisterBody body) async {
    emit(AuthLoading());

    final failureOrSuccess = await registerUsecase.call(body);

    failureOrSuccess.fold(
      (error) => emit(AuthFailure(error.message)),
      (data) => emit(AuthRegisterSuccess(data)),
    );
  }
}
