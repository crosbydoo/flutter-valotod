import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Lets Explore',
          style: ValoTypoGraph.body1.black.copyWith(color: Palette.white),
        ),
        Text(
          'Know More About Valorant',
          style: ValoTypoGraph.heading3.black.copyWith(color: Palette.white),
        ),
        const Gap(24),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/gif/jett.gif',
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The New Evolution',
                        style: ValoTypoGraph.body1.black
                            .copyWith(color: Palette.white),
                      ),
                      Text(
                        '5vs5 Character-Based FPS',
                        style: ValoTypoGraph.heading3.black
                            .copyWith(color: Palette.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
