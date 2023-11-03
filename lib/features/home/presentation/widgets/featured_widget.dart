import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/presentation/screens/agent_screen.dart';
import 'package:valotod_app/features/armory/presentation/screens/weapon_screen.dart';
import 'package:valotod_app/features/bundles/presentation/screens/bundle_screen.dart';
import 'package:valotod_app/features/home/presentation/components/featured_notifier.dart';
import 'package:valotod_app/features/maps/presentation/screens/maps_screen.dart';

class FeaturedWidget extends StatelessWidget {
  const FeaturedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FeaturedNotifier(),
      child: Consumer<FeaturedNotifier>(
        builder: (context, featuredNotifier, child) {
          final isExpanded = featuredNotifier.isExpanded;
          final gridItemCount = isExpanded ? 8 : 4;

          List<Widget> generateGridItems(int count) {
            final iconList = <IconData>[
              FontAwesomeIcons.userSecret,
              FontAwesomeIcons.cubes,
              FontAwesomeIcons.map,
              FontAwesomeIcons.gun,
              FontAwesomeIcons.award,
              Icons.celebration,
              FontAwesomeIcons.idCardClip,
              FontAwesomeIcons.boxesStacked,
            ];

            final menuList = <String>[
              'Agents',
              'Buddies',
              'Maps',
              'Weapons',
              'Competitive Tiers',
              'Ceremonies',
              'Player Card',
              'Bundles',
            ];

            final widgetList = <Widget>[
              const AgentScreen(),
              const BundleScreen(),
              const MapsScreen(),
              const WeaponScreen(),
            ];

            return List.generate(count, (index) {
              if (index < iconList.length) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Get.to<void>(() => widgetList[index]);
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Icon(
                            iconList[index],
                            color: Palette.white,
                          ),
                        ),
                        Text(
                          menuList[index],
                          textAlign: TextAlign.center,
                          style: ValoTypoGraph.label3.black.copyWith(
                            color: Palette.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Container();
              }
            });
          }

          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured',
                    style: ValoTypoGraph.heading2.black
                        .copyWith(color: Palette.white),
                  ),
                  TextButton(
                    onPressed: () {
                      featuredNotifier.toggleExpansion();
                    },
                    child: Text(
                      isExpanded ? 'Hide' : 'See all',
                      style: ValoTypoGraph.body1.black
                          .copyWith(color: Palette.white),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: 1,
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      GridView.count(
                        crossAxisCount: 4,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: generateGridItems(gridItemCount),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
