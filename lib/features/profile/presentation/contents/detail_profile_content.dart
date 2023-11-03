// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/profile/presentation/widgets/personal_info_widget.dart';
import 'package:valotod_app/features/profile/presentation/widgets/setting_profile_widget.dart';

class DetailProfileContent extends StatefulWidget {
  const DetailProfileContent({
    required this.fullname,
    required this.username,
    required this.email,
    required this.joindate,
    super.key,
  });

  final String fullname;
  final String username;
  final String email;
  final DateTime joindate;

  @override
  State<DetailProfileContent> createState() => _DetailProfileContentState();
}

class _DetailProfileContentState extends State<DetailProfileContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Information',
              style: ValoTypoGraph.body1.black,
            ),
            const Gap(15),
            PersonalInfoWidget(
              fullname: widget.fullname,
              username: widget.username,
              email: widget.email,
              joindate: widget.joindate,
            ),
            const Gap(20),
            Text(
              'Setting',
              style: ValoTypoGraph.body1.black,
            ),
            const Gap(10),
            const SettingProfileWidget(),
            const Gap(150),
          ],
        ),
      ),
    );
  }
}
