import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/constant/prefs_key.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/prefs/shared_preferences.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/maps/presentation/cubit/maps_cubit.dart';
import 'package:valotod_app/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:valotod_app/features/profile/presentation/widgets/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final profileCubit = sl<ProfileCubit>();

  @override
  void initState() {
    profileCubit.getProfile();
    super.initState();
  }

  @override
  void dispose() {
    sl<MapsCubit>().close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final prefs = sl<SharedPrefs>();

    final isLogin = prefs.getString(PrefsKey.accessToken);

    print('halo halo $isLogin');
    return BlocProvider(
      create: (context) => profileCubit,
      child: const Stack(
        children: [
          ValoBackgroundBasicWidget(),
          ProfileWidget(),
        ],
      ),
    );
  }
}
