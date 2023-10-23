import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/router/routes.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_widget.dart';
import 'package:valotod_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:valotod_app/features/auth/presentation/widgets/login_form_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final authCubit = sl<AuthCubit>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.black,
      body: BlocProvider(
        create: (context) => authCubit,
        child: Stack(
          children: [
            const ValoBackgroundWidget(
              imageAsset: 'assets/img/jett.png',
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Login',
                      style: ValoTypoGraph.heading2.bold.copyWith(
                        color: Palette.white500,
                      ),
                    ),
                    Text(
                      'Stay connected with us',
                      style: ValoTypoGraph.body1.medium.copyWith(
                        color: Palette.white500,
                      ),
                    ),
                    const Gap(30),
                    const LoginFormWidget(),
                    Row(
                      children: [
                        Text(
                          'Dont have Account?',
                          style: ValoTypoGraph.body2.medium.copyWith(
                            color: Palette.white500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed<void>(Routes.register);
                          },
                          child: Text(
                            'Register',
                            style: ValoTypoGraph.body2.medium.copyWith(
                              color: Palette.error400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
