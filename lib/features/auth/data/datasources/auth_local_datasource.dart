import 'package:valotod_app/core/constant/prefs_key.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<void> saveBearerToken(String token);
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
    await prefs.clearKey(PrefsKey.accessToken);
  }
}
