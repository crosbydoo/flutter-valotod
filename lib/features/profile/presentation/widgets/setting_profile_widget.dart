import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';
import 'package:valotod_app/core/router/routes.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';

class SettingProfileWidget extends StatelessWidget {
  const SettingProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Palette.black400),
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.sunny,
                  // Icons.mode_night,
                  color: Colors.amber,
                ),
              ),
              Text(
                'Light Mode',
                style: ValoTypoGraph.body1.black,
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.sunny,
                  // Icons.mode_night,
                  color: Colors.amber,
                ),
              ),
              Text(
                'Light Mode',
                style: ValoTypoGraph.body1.black,
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.sunny,
                  // Icons.mode_night,
                  color: Colors.amber,
                ),
              ),
              Text(
                'Light Mode',
                style: ValoTypoGraph.body1.black,
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  sl<SharedPrefs>().clearAll();

                  Get
                    ..offAllNamed<void>(Routes.login)
                    ..snackbar('Logout Success', 'See you around Soldier');
                },
                icon: Icon(
                  FontAwesomeIcons.powerOff,
                  color: Palette.error400,
                ),
              ),
              Text(
                'Logout',
                style:
                    ValoTypoGraph.body1.black.copyWith(color: Palette.error400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
