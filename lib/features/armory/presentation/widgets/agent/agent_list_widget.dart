import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_entity.dart';

import 'package:valotod_app/features/armory/presentation/cubit/agent/agent_cubit.dart';
import 'package:valotod_app/features/armory/presentation/widgets/agent/agent_detail_widget.dart';

class AgentListWidget extends StatefulWidget {
  const AgentListWidget({
    required this.state,
    super.key,
  });

  final AgentState state;

  @override
  State<AgentListWidget> createState() => _AgentListWidgetState();
}

class _AgentListWidgetState extends State<AgentListWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = widget.state;

    if (state is AgentLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state is AgentSuccess) {
      List<int> getPlayableIndexes(List<AgentData> data) {
        final indexes = <int>[];
        for (var i = 0; i < data.length; i++) {
          if (data[i].isPlayableCharacter) {
            indexes.add(i);
          }
        }
        return indexes;
      }

      final result = state.result.data;
      final playableIndexes = getPlayableIndexes(result);

      return SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final dataIndex = playableIndexes[index];
            final data = result[dataIndex];
            final uuid = data.uuid;
            final nameAgent = data.displayName;
            final icon = data.displayIcon;

            return InkWell(
              onTap: () {
                Get.to<void>(
                  AgentDetailWidget(
                    uuid: uuid,
                  ),
                );
              },
              child: Card(
                elevation: 4,
                margin: const EdgeInsets.all(8),
                child: Stack(
                  children: [
                    Image.network(icon),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        nameAgent,
                        style: ValoTypoGraph.heading2.black.copyWith(
                          color: Colors.cyan[700],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          childCount: playableIndexes.length,
        ),
      );
    }
    return const SizedBox();
  }
}
