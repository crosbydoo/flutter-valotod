import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/router/routes.dart';

import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/widgets/valobutton_widget.dart';
import 'package:valotod_app/core/shared/widgets/valoformfield_widget.dart';
import 'package:valotod_app/features/auth/data/models/request/register_body.dart';
import 'package:valotod_app/features/auth/presentation/cubit/auth_cubit.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({
    super.key,
  });

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  final showPassword = ValueNotifier<bool>(true);
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController fullname = TextEditingController();
  final authCubit = sl<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {},
      child: Form(
        key: formKey,
        child: Column(
          children: [
            ValoFormWidget(
              label: 'Full Name',
              prefixIcon: FontAwesomeIcons.users,
              obscuredText: false,
              controller: fullname,
              hintText: 'Fill your fullname',
            ),
            const Gap(20),
            ValoFormWidget(
              label: 'Username',
              prefixIcon: Icons.person,
              obscuredText: false,
              controller: username,
              hintText: 'Choose wisely your username',
            ),
            const Gap(20),
            ValoFormWidget(
              label: 'Email',
              prefixIcon: Icons.email_outlined,
              obscuredText: false,
              controller: email,
              hintText: 'Write your email',
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
                  hintText: 'Write your own password',
                );
              },
            ),
            const Gap(24),
            ValoButtonWidget(
              onPress: () {
                if (formKey.currentState!.validate()) {
                  authCubit.registerUsecase(
                    RegisterBody(
                      username: username.text,
                      email: email.text,
                      password: password.text,
                      fullname: fullname.text,
                    ),
                  );
                  Get
                    ..snackbar('Register Success', 'now you can login')
                    ..toNamed<void>(Routes.login);
                }
              },
              text: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
