import 'package:flutter/material.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';

class ValoButtonWidget extends StatelessWidget {
  const ValoButtonWidget({
    required this.onPress,
    required this.text,
    super.key,
  });

  final VoidCallback onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(backgroundColor: Palette.error300),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            text,
            style: ValoTypoGraph.body1.black.copyWith(color: Palette.white500),
          ),
        ),
      ),
    );
  }
}
