import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/shared/extensions/valo_capitalize.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/presentation/content/weapon/weapon_stats_content.dart';
import 'package:valotod_app/features/armory/presentation/cubit/weapon/weapon_cubit.dart';
import 'package:valotod_app/features/armory/presentation/widgets/weapon/weapon_skin_widget.dart';

class WeaponDetailContent extends StatefulWidget {
  const WeaponDetailContent({
    required this.state,
    super.key,
  });
  final WeaponState state;

  @override
  State<WeaponDetailContent> createState() => _WeaponDetailContentState();
}

class _WeaponDetailContentState extends State<WeaponDetailContent> {
  @override
  Widget build(BuildContext context) {
    final state = widget.state;
    if (state is WeaponDetailSuccess) {
      final result = state.result.data;
      final category = result.category;
      final nameWeapon = result.displayName;
      final bgWeapon = result.displayIcon;
      final weaponStats = result.weaponStats;
      final skins = result.skins;
      final uuid = result.uuid;

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  bgWeapon,
                  scale: 1.2,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                    onPressed: () {
                      Get.to<void>(
                        WeaponSkinWidget(
                          skins: skins,
                          uuid: uuid,
                        ),
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.cubes,
                      color: Palette.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      nameWeapon,
                      style: ValoTypoGraph.heading1.bold.copyWith(
                        color: Palette.white,
                      ),
                    ),
                    Text(
                      category.extractCategory(),
                      style: ValoTypoGraph.heading3.bold.copyWith(
                        color: Palette.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Gap(24),
            Text(
              'Weapon Stats',
              style:
                  ValoTypoGraph.heading2.black.copyWith(color: Palette.white),
            ),
            const Gap(15),
            Expanded(
              child: WeaponStatsContent(
                weaponStats: weaponStats,
              ),
            ),
            const Gap(15),
          ],
        ),
      );
    }
    return Container();
  }
}
