import 'package:flutter/material.dart';
import 'package:valotod_app/core/constant/prefs_key.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/home/presentation/widgets/home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<bool> showAllIcons = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final prefs = sl<SharedPrefs>();
    final nameUser = prefs.getString(PrefsKey.userName);
    final profile = prefs.getString(PrefsKey.profileUrl);

    print('HALO $nameUser');
    return const Stack(
      children: [
        ValoBackgroundBasicWidget(),
        HomeWidget(),
      ],
    );
  }
}
