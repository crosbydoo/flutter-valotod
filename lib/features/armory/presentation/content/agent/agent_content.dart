import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/presentation/content/agent/agent_detail_content.dart';
import 'package:valotod_app/features/armory/presentation/cubit/agent/agent_cubit.dart';

class AgentContent extends StatefulWidget {
  const AgentContent({super.key});

  @override
  State<AgentContent> createState() => _AgentContentState();
}

class _AgentContentState extends State<AgentContent> {
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
            backgroundColor:
                _isScrolled.value ? Palette.black : Colors.transparent,
            foregroundColor: Colors.white,
            title: Text(
              'The Agent',
              style: ValoTypoGraph.heading2.bold.copyWith(),
            ),
          ),
          body: BlocBuilder<AgentCubit, AgentState>(
            builder: (context, state) {
              return CustomScrollView(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        Expanded(
                          child: AgentDetailContent(
                            state: state,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
