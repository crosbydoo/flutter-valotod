import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/maps/presentation/contents/maps_detail_content.dart';
import 'package:valotod_app/features/maps/presentation/cubit/maps_cubit.dart';

class MapsDetailWidget extends StatefulWidget {
  const MapsDetailWidget({super.key});

  @override
  State<MapsDetailWidget> createState() => _MapsDetailWidgetState();
}

class _MapsDetailWidgetState extends State<MapsDetailWidget> {
  final _scrollController = ScrollController();
  final _isScrolled = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      _isScrolled.value = _scrollController.offset > 0;
    });
    return ValueListenableBuilder(
      valueListenable: _isScrolled,
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'The Maps',
              style:
                  ValoTypoGraph.heading2.black.copyWith(color: Palette.white),
            ),
            foregroundColor: Palette.white,
            backgroundColor:
                _isScrolled.value ? Palette.black : Colors.transparent,
          ),
          body: BlocBuilder<MapsCubit, MapsState>(
            builder: (context, state) {
              if (state is MapsDetailSuccess) {
                final result = state.result.data;
                final name = result.displayName;
                final icon = result.displayIcon;
                final image = result.splash;
                final coordinate = result.coordinates;
                final tactical = result.tacticalDescription;
                final narrative = result.narrativeDescription;
                return CustomScrollView(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                        children: [
                          Expanded(
                            child: MapsDetailContent(
                              name: name,
                              image: image,
                              icon: icon,
                              coordinate: coordinate,
                              tactical: tactical,
                              narrativeDescription: narrative,
                            ),
                          ),
                        ],
                      ),
                    ),
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
