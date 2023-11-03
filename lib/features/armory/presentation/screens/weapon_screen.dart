import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/armory/presentation/cubit/weapon/weapon_cubit.dart';
import 'package:valotod_app/features/armory/presentation/widgets/weapon/weapon_widget.dart';

class WeaponScreen extends StatefulWidget {
  const WeaponScreen({super.key});

  @override
  State<WeaponScreen> createState() => _WeaponScreenState();
}

class _WeaponScreenState extends State<WeaponScreen> {
  final weaponCubit = sl<WeaponCubit>();

  @override
  void initState() {
    weaponCubit.getWeapons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => weaponCubit,
      child: BlocBuilder<WeaponCubit, WeaponState>(
        builder: (context, state) {
          return Stack(
            children: [
              const ValoBackgroundBasicWidget(),
              WeaponWidget(
                state: state,
              ),
            ],
          );
        },
      ),
    );
  }
}
