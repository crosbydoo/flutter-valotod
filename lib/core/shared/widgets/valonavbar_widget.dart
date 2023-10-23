import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';

class ValoNavBar extends StatelessWidget {
  const ValoNavBar({
    required this.currentIndex,
    required this.pageController,
    super.key,
  });

  final ValueNotifier<int> currentIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Palette.black,
      currentIndex: currentIndex.value,
      showUnselectedLabels: false,
      selectedLabelStyle: ValoTypoGraph.body1.bold,
      unselectedItemColor: Palette.error500,
      selectedItemColor: Palette.white,
      onTap: (int index) {
        currentIndex.value = index;
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Palette.black,
          icon: const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.home,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Palette.black,
          icon: const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.event,
            ),
          ),
          label: 'Event',
        ),
        BottomNavigationBarItem(
          backgroundColor: Palette.black,
          icon: const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              FontAwesomeIcons.gun,
            ),
          ),
          label: 'Armory',
        ),
        BottomNavigationBarItem(
          backgroundColor: Palette.black,
          icon: const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              FontAwesomeIcons.user,
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
