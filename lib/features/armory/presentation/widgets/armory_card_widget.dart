import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/router/routes.dart';
import 'package:valotod_app/features/armory/presentation/components/armory_card_component.dart';

class ArmoryCardWidget extends StatelessWidget {
  const ArmoryCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ArmoryCardComponent(
            title: 'Agents',
            imageAsset: 'assets/img/agent_valo.png',
            onTap: () {
              Get.toNamed<void>(Routes.agent);
            },
          ),
        ),
        Expanded(
          child: ArmoryCardComponent(
            imageAsset: 'assets/img/weapon_valo.png',
            title: 'Weapons',
            onTap: () {
              Get.toNamed<void>(Routes.weapon);
            },
          ),
        ),
        Expanded(
          child: ArmoryCardComponent(
            imageAsset: 'assets/img/fade_valo.jpeg',
            title: 'Gear',
            onTap: () {
              Get.toNamed<void>(Routes.gear);
            },
          ),
        ),
      ],
    );
  }
}
