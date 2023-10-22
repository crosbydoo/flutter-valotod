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
import 'package:valotod_app/features/auth/presentation/widgets/register_form_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final authCubit = sl<AuthCubit>();
    return Scaffold(
      backgroundColor: Palette.black,
      body: BlocProvider(
        create: (context) => authCubit,
        child: Stack(
          children: [
            const ValoBackgroundWidget(
              imageAsset: 'assets/img/omen.png',
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
                      'Register',
                      style: ValoGraph.heading2.bold.copyWith(
                        color: Palette.white500,
                      ),
                    ),
                    Text(
                      'Lets join us',
                      style: ValoGraph.body1.medium.copyWith(
                        color: Palette.white500,
                      ),
                    ),
                    const Gap(30),
                    const RegisterFormWidget(),
                    Row(
                      children: [
                        Text(
                          'Already have account?',
                          style: ValoGraph.body2.medium.copyWith(
                            color: Palette.white500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed<void>(Routes.register);
                          },
                          child: Text(
                            'Login',
                            style: ValoGraph.body2.medium.copyWith(
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
