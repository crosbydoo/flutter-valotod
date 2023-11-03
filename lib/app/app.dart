import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/constant/prefs_key.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';
import 'package:valotod_app/core/router/navigation.dart';
import 'package:valotod_app/core/router/routes.dart';
import 'package:valotod_app/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = sl<SharedPrefs>();

    final isLogin = prefs.getString(PrefsKey.accessToken);
    print('halo $isLogin');

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: isLogin.isEmpty ? Routes.login : Routes.bottomnavbar,
      getPages: Nav.routes,
    );
  }
}
