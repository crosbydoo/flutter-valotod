import 'package:flutter/material.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';
import 'package:valotod_app/core/shared/widgets/valonavbar_widget.dart';
import 'package:valotod_app/features/armory/presentation/screens/armory_screen.dart';
import 'package:valotod_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:valotod_app/features/home/presentation/screens/home_screen.dart';
import 'package:valotod_app/features/maps/presentation/screens/maps_screen.dart';
import 'package:valotod_app/features/profile/presentation/screens/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final indexNotifier = ValueNotifier<int>(0);

  PageController pageController = PageController();

  late String nameUser;
  late String profile;

  @override
  void initState() {
    super.initState();

    sl<SharedPrefs>();

    pageController.addListener(() {
      final newIndex = pageController.page?.round() ?? 0;
      indexNotifier.value = newIndex;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget buildPageView() {
      return PageView(
        controller: pageController,
        children: const <Widget>[
          HomeScreen(),
          MapsScreen(),
          ArmoryScreen(),
          ChatScreen(),
          ProfileScreen(),
        ],
      );
    }

    return ValueListenableBuilder<int>(
      valueListenable: indexNotifier,
      builder: (context, value, _) {
        return Scaffold(
          extendBody: true,
          body: buildPageView(),
          bottomNavigationBar: ValoNavBar(
            currentIndex: indexNotifier,
            pageController: pageController,
          ),
        );
      },
    );
  }
}
