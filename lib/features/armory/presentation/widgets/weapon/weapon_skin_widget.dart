import 'package:flutter/material.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_detail_entity.dart';
import 'package:valotod_app/features/armory/presentation/content/weapon/weapon_skin_content.dart';
import 'package:valotod_app/features/armory/presentation/cubit/weapon/weapon_cubit.dart';

class WeaponSkinWidget extends StatefulWidget {
  const WeaponSkinWidget({required this.skins, required this.uuid, super.key});

  final List<WeaponDetailSkin> skins;
  final String uuid;

  @override
  State<WeaponSkinWidget> createState() => _WeaponSkinWidgetState();
}

class _WeaponSkinWidgetState extends State<WeaponSkinWidget> {
  final cubit = sl<WeaponCubit>();

  @override
  void initState() {
    cubit.getWeaponDetail(widget.uuid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ValoBackgroundBasicWidget(),
          WeaponSkinContent(
            skins: widget.skins,
          ),
        ],
      ),
    );
  }
}
