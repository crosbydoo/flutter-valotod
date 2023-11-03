import 'package:get/get.dart';
import 'package:valotod_app/core/router/routes.dart';
import 'package:valotod_app/features/armory/presentation/screens/agent_screen.dart';
import 'package:valotod_app/features/armory/presentation/screens/gear_screen.dart';
import 'package:valotod_app/features/armory/presentation/screens/weapon_screen.dart';
import 'package:valotod_app/features/auth/presentation/screens/login_screen.dart';
import 'package:valotod_app/features/auth/presentation/screens/register_screen.dart';
import 'package:valotod_app/features/bottom_navigation/presentation/screens/bottom_nav_screen.dart';
import 'package:valotod_app/features/home/presentation/screens/home_screen.dart';

class Nav {
  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.bottomnavbar,
      page: () => const BottomNavScreen(),
      transition: Transition.fadeIn,
    ),

    // AGENTS
    GetPage(
      name: Routes.agent,
      page: () => const AgentScreen(),
      transition: Transition.fade,
    ),

    // WEAPONS
    GetPage(
      name: Routes.weapon,
      page: () => const WeaponScreen(),
      transition: Transition.fade,
    ),

    //GEAR
    GetPage(
      name: Routes.gear,
      page: () => const GearScreen(),
      transition: Transition.fade,
    ),
  ];
}
