// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:valotod_app/core/shared/extensions/valo_dateformat.dart';

import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/core/shared/widgets/valobutton_widget.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({
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
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Palette.black200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Fullname',
                  style: ValoTypoGraph.body1.black,
                ),
              ),
              Text(
                fullname,
                style: ValoTypoGraph.body1.medium,
              ),
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Username',
                  style: ValoTypoGraph.body1.black,
                ),
              ),
              Text(
                username,
                style: ValoTypoGraph.body1.medium,
              ),
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Email',
                  style: ValoTypoGraph.body1.black,
                ),
              ),
              Text(
                email,
                style: ValoTypoGraph.body1.medium,
              ),
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Join Date',
                  style: ValoTypoGraph.body1.black,
                ),
              ),
              Text(
                joindate.valoFormatDate(),
                style: ValoTypoGraph.body1.medium,
              ),
            ],
          ),
          const Gap(20),
          ValoButtonWidget(
            onPress: () {},
            text: 'Edit Profile',
          ),
        ],
      ),
    );
  }
}
