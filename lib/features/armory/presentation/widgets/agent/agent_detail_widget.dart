import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/armory/presentation/content/agent/agent_content.dart';
import 'package:valotod_app/features/armory/presentation/cubit/agent/agent_cubit.dart';

class AgentDetailWidget extends StatefulWidget {
  const AgentDetailWidget({required this.uuid, super.key});

  final String uuid;

  @override
  State<AgentDetailWidget> createState() => _AgentDetailWidgetState();
}

class _AgentDetailWidgetState extends State<AgentDetailWidget> {
  final agentDetailCubit = sl<AgentCubit>();

  @override
  void initState() {
    agentDetailCubit.getAgentDetail(widget.uuid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => agentDetailCubit,
      child: BlocBuilder<AgentCubit, AgentState>(
        builder: (context, state) {
          return const Stack(
            children: [
              ValoBackgroundBasicWidget(),
              AgentContent(),
            ],
          );
        },
      ),
    );
  }
}
