import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/maps/presentation/contents/maps_content.dart';
import 'package:valotod_app/features/maps/presentation/cubit/maps_cubit.dart';

class MapsWidget extends StatefulWidget {
  const MapsWidget({super.key});

  @override
  State<MapsWidget> createState() => _MapsWidgetState();
}

class _MapsWidgetState extends State<MapsWidget> {
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
          appBar: AppBar(
            title: Text(
              'Maps',
              style:
                  ValoTypoGraph.heading2.black.copyWith(color: Palette.white),
            ),
            automaticallyImplyLeading: false,
            backgroundColor:
                _isScrolled.value ? Palette.black : Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: BlocBuilder<MapsCubit, MapsState>(
            builder: (context, state) {
              return CustomScrollView(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        MapsContent(state: state),
                        const Gap(150),
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
