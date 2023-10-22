import 'package:get/get.dart';
import 'package:valotod_app/core/router/routes.dart';
import 'package:valotod_app/features/auth/presentation/screens/login_screen.dart';
import 'package:valotod_app/features/auth/presentation/screens/register_screen.dart';
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
  ];
}
