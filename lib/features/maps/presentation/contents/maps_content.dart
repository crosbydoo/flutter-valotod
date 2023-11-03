import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/maps/presentation/cubit/maps_cubit.dart';
import 'package:valotod_app/features/maps/presentation/screens/maps_detail_screen.dart';

class MapsContent extends StatefulWidget {
  const MapsContent({
    required this.state,
    super.key,
  });

  final MapsState state;

  @override
  State<MapsContent> createState() => _MapsContentState();
}

class _MapsContentState extends State<MapsContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = widget.state;

    if (state is MapsLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state is MapsSuccess) {
      final data = state.result.data;
      return Column(
        children: List.generate(data.length, (index) {
          final dataMap = data[index];
          final nameDisplay = dataMap.displayName;
          final listviewIcon = dataMap.listViewIcon;
          final coordinate = dataMap.coordinates;
          final uuid = dataMap.uuid;

          return InkWell(
            onTap: () {
              Get.to<void>(MapsDetailScreen(uuid: uuid));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Palette.black,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(listviewIcon),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameDisplay,
                      style: ValoTypoGraph.heading1.bold
                          .copyWith(color: Palette.white),
                    ),
                    Text(
                      coordinate ?? "45°26'BF'N,12°20'Q'E",
                      style: ValoTypoGraph.body4.medium
                          .copyWith(color: Palette.white),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      );
    }
    return Container();
  }
}
