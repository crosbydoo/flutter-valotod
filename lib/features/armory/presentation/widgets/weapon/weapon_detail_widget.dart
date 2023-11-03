import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/armory/presentation/content/weapon/weapon_content.dart';
import 'package:valotod_app/features/armory/presentation/cubit/weapon/weapon_cubit.dart';

class WeaponDetailWidget extends StatefulWidget {
  const WeaponDetailWidget({
    required this.uuid,
    super.key,
  });

  final String uuid;

  @override
  State<WeaponDetailWidget> createState() => _WeaponDetailWidgetState();
}

class _WeaponDetailWidgetState extends State<WeaponDetailWidget> {
  final weaponDetailCubit = sl<WeaponCubit>();

  @override
  void initState() {
    weaponDetailCubit.getWeaponDetail(widget.uuid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => weaponDetailCubit,
      child: const Stack(
        children: [
          ValoBackgroundBasicWidget(),
          WeaponContent(),
        ],
      ),
    );
  }
}
