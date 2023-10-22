import 'package:dio/dio.dart';
import 'package:valotod_app/core/constant/api_path.dart';
import 'package:valotod_app/features/auth/data/models/request/login_body.dart';
import 'package:valotod_app/features/auth/data/models/request/register_body.dart';
import 'package:valotod_app/features/auth/data/models/response/login_model.dart';
import 'package:valotod_app/features/auth/data/models/response/register_model.dart';
import 'package:valotod_app/features/auth/domain/entities/login_entity.dart';
import 'package:valotod_app/features/auth/domain/entities/register_entity.dart';

abstract class AuthRemoteDatasource {
  Future<LoginEntity> login(LoginBody body);
  Future<RegisterEntity> register(RegisterBody body);
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  AuthRemoteDatasourceImpl(this._client);

  final Dio _client;

  @override
  Future<LoginEntity> login(LoginBody body) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        ApiPath.login,
        data: body.toJson(),
      );

      return LoginModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }

  @override
  Future<RegisterEntity> register(RegisterBody body) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        ApiPath.register,
        data: body.toJson(),
      );

      return RegisterModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }
}
