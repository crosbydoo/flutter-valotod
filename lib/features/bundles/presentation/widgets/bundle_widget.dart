import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/bundles/presentation/cubit/bundles_cubit.dart';

class BundleWidget extends StatefulWidget {
  const BundleWidget({super.key});

  @override
  State<BundleWidget> createState() => _BundleWidgetState();
}

class _BundleWidgetState extends State<BundleWidget> {
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
            foregroundColor: Palette.white,
            title: Text(
              'Bundles',
              style:
                  ValoTypoGraph.heading2.black.copyWith(color: Palette.white),
            ),
            backgroundColor:
                _isScrolled.value ? Palette.black : Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: BlocBuilder<BundlesCubit, BundlesState>(
            builder: (context, state) {
              if (state is BundleSuccess) {
                final data = state.result.data;

                return CustomScrollView(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                        children: List.generate(data.length, (index) {
                          final dataBundles = data[index];
                          final nameDisplay = dataBundles.displayName;
                          final listviewIcon = dataBundles.displayIcon2;

                          return Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 24,
                            ),
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
                                    style: ValoTypoGraph.heading1.bold.copyWith(
                                      color: Palette.white,
                                    ),
                                  ),
                                  // Text(
                                  //   coordinate ?? "45°26'BF'N,12°20'Q'E",
                                  //   style: ValoTypoGraph.body4.medium
                                  //       .copyWith(
                                  //     color: Palette.white,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          );
                        }),
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
