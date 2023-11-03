import 'package:dio/dio.dart';
import 'package:valotod_app/core/constant/api_path.dart';
import 'package:valotod_app/features/bundles/data/models/response/bundle_model.dart';
import 'package:valotod_app/features/bundles/domain/entities/bundle_entity.dart';

abstract class BundleRemoteDatasource {
  Future<BundleEntity> getBundles();
}

class BundleRemoteDatasourceImpl implements BundleRemoteDatasource {
  BundleRemoteDatasourceImpl(this._client);

  final Dio _client;

  @override
  Future<BundleEntity> getBundles() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        ApiPath.valoBundles,
      );

      return BundleModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }
}
