import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.black400,
      appBar: AppBar(
        backgroundColor: Palette.black400,
        centerTitle: false,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/img/splash.png'),
            ),
            const Gap(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: ValoTypoGraph.label3.black,
                ),
                Text(
                  'Hi, UserBot',
                  style: ValoTypoGraph.heading3.black,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Lets Explore'),
            Text(
              'Know More About Valorant',
              style: ValoTypoGraph.heading3.black,
            ),
          ],
        ),
      ),
    );
  }
}
