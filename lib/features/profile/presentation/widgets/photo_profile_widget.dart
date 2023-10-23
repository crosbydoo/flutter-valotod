import 'package:flutter/material.dart';
import 'package:valotod_app/core/shared/style/palette.dart';

class PhotoProfileWidget extends StatelessWidget {
  const PhotoProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: CircleAvatar(
        backgroundColor: Palette.secondary400,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.edit,
          ),
        ),
      ),
    );
  }
}
