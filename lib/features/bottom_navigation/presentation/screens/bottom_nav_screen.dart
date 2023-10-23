import 'package:flutter/material.dart';
import 'package:valotod_app/core/shared/widgets/valonavbar_widget.dart';
import 'package:valotod_app/features/home/presentation/screens/home_screen.dart';
import 'package:valotod_app/features/profile/presentation/screens/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final indexNotifier = ValueNotifier<int>(0);

  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
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
          ProfileScreen(),
          ProfileScreen(),
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
