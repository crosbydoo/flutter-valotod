import 'package:flutter/material.dart';
import 'package:valotod_app/features/armory/presentation/content/agent/agent_header_content.dart';
import 'package:valotod_app/features/armory/presentation/content/agent/agent_main_content.dart';

import 'package:valotod_app/features/armory/presentation/cubit/agent/agent_cubit.dart';

class AgentDetailContent extends StatefulWidget {
  const AgentDetailContent({
    required this.state,
    super.key,
  });
  final AgentState state;

  @override
  State<AgentDetailContent> createState() => _AgentDetailContentState();
}

class _AgentDetailContentState extends State<AgentDetailContent> {
  @override
  Widget build(BuildContext context) {
    final state = widget.state;
    if (state is AgentDetailSuccess) {
      final result = state.result.data;
      final bgAgent = result.fullPortraitV2;
      final devName = result.developerName;
      final storyAgent = result.description;
      final nameAgent = result.displayName;
      final icon = result.displayIcon;
      final background = result.background;
      final iconRole = result.role.displayIcon;
      final roleName = result.role.displayName;
      final roleDescription = result.role.description;

      final abilities = result.abilities;

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AgentHeaderContent(
            background: background,
            bgAgent: bgAgent,
          ),
          AgentMainContent(
            nameAgent: nameAgent,
            icon: icon,
            storyAgent: storyAgent,
            roleName: roleName,
            iconRole: iconRole,
            roleDescription: roleDescription,
            devName: devName,
            abilities: abilities,
          ),
        ],
      );
    }
    return Container();
  }
}
