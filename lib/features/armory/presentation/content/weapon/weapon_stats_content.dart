import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:valotod_app/core/shared/extensions/valo_percentformat.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_detail_entity.dart';

class WeaponStatsContent extends StatefulWidget {
  const WeaponStatsContent({required this.weaponStats, super.key});

  final WeaponDetailStats weaponStats;

  @override
  State<WeaponStatsContent> createState() => _WeaponStatsContentState();
}

class _WeaponStatsContentState extends State<WeaponStatsContent> {
  @override
  Widget build(BuildContext context) {
    final result = widget.weaponStats;
    final fireRate = result.fireRate;
    final magazineSize = result.magazineSize;
    final runSpeedMultiplier = result.runSpeedMultiplier;
    final equipmentSpeed = result.equipTimeSeconds;
    final firstBullet = result.firstBulletAccuracy;
    final reloadSpeed = result.reloadTimeSeconds;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 1,
            width: double.infinity,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                _buildCard(
                  'Firerate',
                  fireRate.convertToPercentage(20),
                  fireRate.toString(),
                  'RDS/SEC',
                ),
                _buildCard(
                  'Magazine',
                  magazineSize.toDouble().convertToPercentage(100),
                  magazineSize.toString(),
                  'RDS',
                ),
                _buildCard(
                  'Run Speed',
                  runSpeedMultiplier.convertToPercentage(10),
                  runSpeedMultiplier.toString(),
                  'M/SEC',
                ),
                _buildCard(
                  'Equip Speed',
                  equipmentSpeed.convertToPercentage(10),
                  equipmentSpeed.toString(),
                  'SEC',
                ),
                _buildCard(
                  'Shoot Spread',
                  firstBullet.convertToPercentage(10),
                  firstBullet.toString(),
                  'DEG',
                ),
                _buildCard(
                  'Reload Time',
                  reloadSpeed.convertToPercentage(10),
                  reloadSpeed.toString(),
                  'SEC',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard(
    String title,
    double percent,
    String string,
    String subtitle,
  ) {
    return Card(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style:
                    ValoTypoGraph.heading3.black.copyWith(color: Palette.white),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Text(
                      string,
                      style: ValoTypoGraph.heading1.black
                          .copyWith(color: Palette.white),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: ValoTypoGraph.label1.black
                        .copyWith(color: Palette.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: LinearPercentIndicator(
                percent: percent,
                barRadius: const Radius.circular(12),
                progressColor: Colors.blue[300],
                backgroundColor: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
