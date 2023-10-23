import 'package:flutter/material.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/profile/presentation/widgets/photo_profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.black400,
      appBar: AppBar(
        backgroundColor: Palette.black400,
        title: Text(
          'Profile',
          style: ValoTypoGraph.heading2.black,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage('assets/img/splash.png'),
                  ),
                  PhotoProfileWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
