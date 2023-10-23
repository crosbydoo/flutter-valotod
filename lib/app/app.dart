import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/router/navigation.dart';
import 'package:valotod_app/core/router/routes.dart';
import 'package:valotod_app/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // final prefs = sl<SharedPrefs>();
    // final isLogin = prefs.getString(PrefsKey.accessToken);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: Routes.bottomnavbar,
      getPages: Nav.routes,
    );
  }
}
