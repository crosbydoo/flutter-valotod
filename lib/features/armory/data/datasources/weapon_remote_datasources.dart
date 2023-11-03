import 'package:dio/dio.dart';
import 'package:valotod_app/core/constant/api_path.dart';
import 'package:valotod_app/features/armory/data/models/response/weapon/weapon_detail_model.dart';
import 'package:valotod_app/features/armory/data/models/response/weapon/weapon_model.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_detail_entity.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_entity.dart';

abstract class WeaponRemoteDatasource {
  Future<WeaponEntity> getWeapons();
  Future<WeaponDetailEntity> getWeaponDetail(String uuid);
}

class WeaponRemoteDatasourceImpl implements WeaponRemoteDatasource {
  WeaponRemoteDatasourceImpl(this._client);

  final Dio _client;

  @override
  Future<WeaponDetailEntity> getWeaponDetail(String uuid) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        '${ApiPath.valoWeapons}/$uuid',
      );
      print('COKI $response');
      return WeaponDetailModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }

  @override
  Future<WeaponEntity> getWeapons() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        ApiPath.valoWeapons,
      );

      print('halocheck $response');

      return WeaponModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }
}
