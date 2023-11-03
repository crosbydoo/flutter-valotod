import 'package:flutter/material.dart';

import 'package:valotod_app/core/shared/style/typograph.dart';

class ArmoryCardComponent extends StatelessWidget {
  const ArmoryCardComponent({
    required this.imageAsset,
    required this.title,
    required this.onTap,
    super.key,
  });

  final String imageAsset;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(imageAsset),
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            title,
            style: ValoTypoGraph.heading1.black.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
