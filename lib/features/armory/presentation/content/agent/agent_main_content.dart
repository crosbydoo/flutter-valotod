// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_detail_entity.dart';

class AgentMainContent extends StatelessWidget {
  const AgentMainContent({
    required this.nameAgent,
    required this.icon,
    required this.storyAgent,
    required this.roleName,
    required this.iconRole,
    required this.roleDescription,
    required this.devName,
    required this.abilities,
    super.key,
  });
  final String nameAgent;
  final String icon;
  final String storyAgent;
  final String roleName;
  final String iconRole;
  final String roleDescription;
  final String devName;
  final List<AgentDetailAbility> abilities;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Palette.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              child: Text(
                'Information Agent',
                style:
                    ValoTypoGraph.heading2.black.copyWith(color: Palette.white),
              ),
            ),
            const Gap(20),
            Text(
              nameAgent,
              style:
                  ValoTypoGraph.heading3.black.copyWith(color: Palette.white),
            ),
            const Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  icon,
                  scale: 2.5,
                ),
                const Gap(10),
                Expanded(
                  child: Text(
                    storyAgent,
                    textAlign: TextAlign.justify,
                    style: ValoTypoGraph.label2.black.copyWith(
                      color: Palette.white,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(20),
            Text(
              roleName,
              style:
                  ValoTypoGraph.heading3.black.copyWith(color: Palette.white),
            ),
            const Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  iconRole,
                  scale: 1.28,
                ),
                const Gap(10),
                Expanded(
                  child: Text(
                    roleDescription,
                    textAlign: TextAlign.justify,
                    style: ValoTypoGraph.label2.black.copyWith(
                      color: Palette.white,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Abilities',
                style:
                    ValoTypoGraph.heading3.black.copyWith(color: Palette.white),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                height: 100,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    GridView.count(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(abilities.length, (index) {
                        final ability = abilities[index];
                        final iconAbility = ability.displayIcon;
                        final nameAbility = ability.displayName;
                        final descriptionAbility = ability.description;
                        final slotAbility = ability.slot;

                        return InkWell(
                          onTap: () async {
                            await showDialog<void>(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(nameAbility),
                                      Text(
                                        slotAbility,
                                        style: ValoTypoGraph.body1.medium,
                                      ),
                                    ],
                                  ),
                                  content: Text(
                                    descriptionAbility,
                                    textAlign: TextAlign.justify,
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Okay'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(child: Image.network(iconAbility)),
                              const Gap(5),
                              Text(
                                nameAbility,
                                style: ValoTypoGraph.label3.bold
                                    .copyWith(color: Palette.white),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(25),
            Align(
              child: Text(
                'Character by $devName',
                style: ValoTypoGraph.body1.bold.copyWith(color: Palette.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
