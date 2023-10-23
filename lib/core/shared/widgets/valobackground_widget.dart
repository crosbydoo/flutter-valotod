import 'package:flutter/material.dart';

class ValoBackgroundWidget extends StatelessWidget {
  const ValoBackgroundWidget({
    required this.imageAsset,
    super.key,
  });

  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.red,
            Colors.black,
          ],
        ),
      ),
      child: SafeArea(
        child: Image.asset(
          imageAsset,
        ),
      ),
    );
  }
}
