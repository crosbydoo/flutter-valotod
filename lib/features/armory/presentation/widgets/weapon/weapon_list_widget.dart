import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_entity.dart';
import 'package:valotod_app/features/armory/presentation/widgets/weapon/weapon_detail_widget.dart';

class WeaponListWidget extends StatefulWidget {
  const WeaponListWidget({
    required this.data,
    super.key,
  });

  final List<WeaponData> data;

  @override
  State<WeaponListWidget> createState() => _WeaponListWidgetState();
}

class _WeaponListWidgetState extends State<WeaponListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(widget.data.length, (index) {
        final dataBundles = widget.data[index];
        final nameDisplay = dataBundles.displayName;
        final listviewIcon = dataBundles.displayIcon;
        final uuid = dataBundles.uuid;

        return InkWell(
          onTap: () {
            Get.to<void>(
              WeaponDetailWidget(
                uuid: uuid,
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 24,
            ),
            padding: const EdgeInsets.symmetric(vertical: 24),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Palette.black,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(listviewIcon),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameDisplay,
                    style: ValoTypoGraph.heading1.bold.copyWith(
                      color: Palette.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
