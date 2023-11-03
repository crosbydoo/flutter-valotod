import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/armory/presentation/cubit/agent/agent_cubit.dart';
import 'package:valotod_app/features/armory/presentation/widgets/agent/agent_widget.dart';

class AgentScreen extends StatefulWidget {
  const AgentScreen({super.key});

  @override
  State<AgentScreen> createState() => _AgentScreenState();
}

class _AgentScreenState extends State<AgentScreen> {
  final agentCubit = sl<AgentCubit>();

  @override
  void initState() {
    agentCubit.getAgents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => agentCubit,
      child: const Stack(
        children: [
          ValoBackgroundBasicWidget(),
          AgentWidget(),
        ],
      ),
    );
  }
}
