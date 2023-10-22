import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:valotod_app/core/constant/prefs_key.dart';
import 'package:valotod_app/core/env/env_config.dart';
import 'package:valotod_app/core/network/dio_handler.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';

class MockEnvConfig extends Mock implements EnvConfig {}

class MockSharedPrefs extends Mock implements SharedPrefs {}

void main() {
  late MockEnvConfig mockConfig;
  late MockSharedPrefs mockPrefs;

  setUp(() {
    mockConfig = MockEnvConfig();
    mockPrefs = MockSharedPrefs();
  });

  test('DioHandler should add logging interceptor', () {
    // Arrange
    when(() => mockConfig.apiBaseUrl).thenReturn('https://example.com');
    when(() => mockPrefs.isKeyExists(PrefsKey.accessToken)).thenReturn(true);
    when(() => mockPrefs.getString(PrefsKey.accessToken))
        .thenReturn('dummyToken');

    // Membuat instance baru DioHandler dengan preferences yang sudah di-mock
    final dioHandler = DioHandler(config: mockConfig, preferences: mockPrefs);

    // Act
    final dio = dioHandler.dio;

    // Assert
    final interceptors = dio.interceptors;
    expect(interceptors, isNotEmpty);
    final loggingInterceptor = interceptors.firstWhere(
      (interceptor) => interceptor is InterceptorsWrapper,
    );
    expect(loggingInterceptor, isNotNull);
  });
}
