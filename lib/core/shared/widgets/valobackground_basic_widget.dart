import 'package:flutter/material.dart';
import 'package:valotod_app/core/shared/style/palette.dart';

class ValoBackgroundBasicWidget extends StatelessWidget {
  const ValoBackgroundBasicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Palette.error500,
            Palette.black,
          ],
        ),
      ),
    );
  }
}
