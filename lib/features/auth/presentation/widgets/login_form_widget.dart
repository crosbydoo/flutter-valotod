import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/router/routes.dart';

import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/widgets/valobutton_widget.dart';
import 'package:valotod_app/core/shared/widgets/valoformfield_widget.dart';
import 'package:valotod_app/features/auth/data/models/request/login_body.dart';
import 'package:valotod_app/features/auth/presentation/cubit/auth_cubit.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final showPassword = ValueNotifier<bool>(true);
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final authCubit = sl<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoginSuccess) {}
      },
      child: Form(
        key: formKey,
        child: Column(
          children: [
            ValoFormWidget(
              label: 'Username',
              prefixIcon: Icons.email_outlined,
              controller: email,
              hintText: 'Write your username',
            ),
            const Gap(20),
            ValueListenableBuilder(
              valueListenable: showPassword,
              builder: (context, value, child) {
                return ValoFormWidget(
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: IconButton(
                    icon: Icon(
                      value ? Icons.visibility_off : Icons.visibility,
                      color: Palette.white500,
                    ),
                    onPressed: () {
                      showPassword.value = !showPassword.value;
                    },
                  ),
                  label: 'Password',
                  obscuredText: value,
                  controller: password,
                  hintText: 'Write your password',
                );
              },
            ),
            const Gap(24),
            ValoButtonWidget(
              onPress: () {
                if (formKey.currentState!.validate()) {
                  authCubit.login(
                    LoginBody(username: email.text, password: password.text),
                  );

                  Get
                    ..snackbar(
                      'Login Success',
                      'Welcome to the club',
                    )
                    ..toNamed<void>(Routes.bottomnavbar);
                }
              },
              text: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
