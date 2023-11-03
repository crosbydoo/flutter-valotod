import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:valotod_app/core/shared/extensions/valo_capitalize.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';

class HeaderProfileContent extends StatelessWidget {
  const HeaderProfileContent({
    required this.imgProfile,
    required this.fullName,
    super.key,
  });
  final String imgProfile;
  final String fullName;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(right: 24, left: 24, bottom: 32),
      child: Column(
        children: [
          AvatarGlow(
            endRadius: 60,
            child: CircleAvatar(
              backgroundImage: NetworkImage(imgProfile),
              radius: 50,
            ),
          ),
          Text(
            fullName.valoCapitalize(),
            style: ValoTypoGraph.heading2.bold.copyWith(color: Palette.white),
          ),
        ],
      ),
    );
  }
}
