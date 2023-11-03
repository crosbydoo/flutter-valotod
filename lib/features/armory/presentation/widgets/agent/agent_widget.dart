import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/presentation/cubit/agent/agent_cubit.dart';
import 'package:valotod_app/features/armory/presentation/widgets/agent/agent_list_widget.dart';

class AgentWidget extends StatefulWidget {
  const AgentWidget({super.key});

  @override
  State<AgentWidget> createState() => _AgentWidgetState();
}

class _AgentWidgetState extends State<AgentWidget> {
  final _scrollController = ScrollController();
  final _isScrolled = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      _isScrolled.value = _scrollController.offset > 0;
    });

    return ValueListenableBuilder(
      valueListenable: _isScrolled,
      builder: (context, value, _) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            foregroundColor: Palette.white,
            backgroundColor:
                _isScrolled.value ? Palette.black : Colors.transparent,
            title: Text(
              'Agents',
              style:
                  ValoTypoGraph.heading2.black.copyWith(color: Palette.white),
            ),
          ),
          body: BlocBuilder<AgentCubit, AgentState>(
            builder: (context, state) {
              if (state is AgentSuccess) {
                return CustomScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: _scrollController,
                  slivers: [
                    AgentListWidget(state: state),
                  ],
                );
              }
              return Container();
            },
          ),
        );
      },
    );
  }
}
