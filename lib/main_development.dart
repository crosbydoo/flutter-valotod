import 'package:flutter/material.dart';
import 'package:valotod_app/app/app.dart';
import 'package:valotod_app/bootstrap.dart';
import 'package:valotod_app/core/env/flavor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorSettings.development();
  bootstrap(() => const App());
}
