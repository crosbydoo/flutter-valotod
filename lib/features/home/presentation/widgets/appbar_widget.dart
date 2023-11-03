import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:valotod_app/core/constant/prefs_key.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';
import 'package:valotod_app/core/shared/extensions/valo_capitalize.dart';
import 'package:valotod_app/core/shared/extensions/valo_firstname.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/core/shared/utils/valo_greeting_utils.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  late String nameUser = '';
  late String profile = '';

  @override
  void initState() {
    final prefs = sl<SharedPrefs>();
    nameUser = prefs.getString(PrefsKey.userName);
    profile = prefs.getString(PrefsKey.profileUrl);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (nameUser.isEmpty || profile.isEmpty) {
      final prefs = sl<SharedPrefs>();
      nameUser = prefs.getString(PrefsKey.userName);
      profile = prefs.getString(PrefsKey.profileUrl);
    }
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(profile),
        ),
        const Gap(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              valoGreeting(),
              style: ValoTypoGraph.label2.black.copyWith(color: Palette.white),
            ),
            Text(
              'Hi, $nameUser'.valoCapitalize().valoFirstName(),
              style:
                  ValoTypoGraph.heading3.black.copyWith(color: Palette.white),
            ),
          ],
        ),
      ],
    );
  }
}
