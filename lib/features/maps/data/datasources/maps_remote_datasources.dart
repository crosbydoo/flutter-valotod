import 'package:dio/dio.dart';
import 'package:valotod_app/core/constant/api_path.dart';
import 'package:valotod_app/features/maps/data/models/response/maps_detail_model.dart';
import 'package:valotod_app/features/maps/data/models/response/maps_model.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_detail_entity.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_entity.dart';

abstract class MapsRemoteDatasource {
  Future<MapsEntity> getMaps();
  Future<MapsDetailEntity> getMapsDetail(String uuid);
}

class MapsRemoteDatasourceImpl implements MapsRemoteDatasource {
  MapsRemoteDatasourceImpl(this._client);

  final Dio _client;

  @override
  Future<MapsEntity> getMaps() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        ApiPath.valoMaps,
      );

      return MapsModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }

  @override
  Future<MapsDetailEntity> getMapsDetail(String uuid) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        '${ApiPath.valoMaps}/$uuid',
      );

      return MapsDetailModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }
}
