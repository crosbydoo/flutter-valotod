import 'package:valotod_app/core/env/env_config.dart';

/// * This file is configuration to make separate between environment
/// see details about [flutter flavor]
class FlavorSettings {
  FlavorSettings.development() {
    EnvConfig.getInstance(
      flavorName: 'development',
      apiBaseUrl: url,
    );
  }

  FlavorSettings.staging() {
    EnvConfig.getInstance(
      flavorName: 'staging',
      apiBaseUrl: url,
    );
  }

  FlavorSettings.production() {
    EnvConfig.getInstance(
      flavorName: 'production',
      apiBaseUrl: url,
    );
  }
  static String url = 'http://localhost:4001/api';
}
