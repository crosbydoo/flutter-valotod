import 'package:dio/dio.dart';
import 'package:valotod_app/core/constant/api_path.dart';
import 'package:valotod_app/core/constant/prefs_key.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';
import 'package:valotod_app/features/profile/data/models/response/profile_model.dart';
import 'package:valotod_app/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRemoteDatasource {
  Future<ProfileEntity> getProfile();
}

class ProfileRemoteDatasourceImpl implements ProfileRemoteDatasource {
  ProfileRemoteDatasourceImpl(this._client);

  final Dio _client;

  @override
  Future<ProfileEntity> getProfile() async {
    final prefs = sl<SharedPrefs>();

    final id = prefs.getString(PrefsKey.userId);

    try {
      final response = await _client.get<Map<String, dynamic>>(
        '${ApiPath.users}/$id',
      );
      print('halo $response');
      return ProfileModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }
}
