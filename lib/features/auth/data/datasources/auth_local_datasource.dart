import 'package:valotod_app/core/constant/prefs_key.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<void> saveBearerToken(String token);
  Future<void> saveName(String name);
  Future<void> savePhotoProfile(String profile);
  Future<void> saveUserId(String profile);
  Future<void> logout();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  AuthLocalDataSourceImpl(this.prefs);

  final SharedPrefs prefs;

  @override
  Future<void> saveBearerToken(String token) async {
    await prefs.putString(PrefsKey.accessToken, token);
  }

  @override
  Future<void> logout() async {
    await prefs.clearAll();
  }

  @override
  Future<void> saveUserId(String userId) async {
    await prefs.putString(PrefsKey.userId, userId);
  }

  @override
  Future<void> saveName(String name) async {
    await prefs.putString(PrefsKey.userName, name);
  }

  @override
  Future<void> savePhotoProfile(String profile) async {
    await prefs.putString(PrefsKey.profileUrl, profile);
  }
}
