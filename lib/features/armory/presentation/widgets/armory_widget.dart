import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/presentation/widgets/armory_card_widget.dart';

class ArmoryWidget extends StatefulWidget {
  const ArmoryWidget({super.key});

  @override
  State<ArmoryWidget> createState() => _ArmoryWidgetState();
}

class _ArmoryWidgetState extends State<ArmoryWidget> {
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
            automaticallyImplyLeading: false,
            backgroundColor:
                _isScrolled.value ? Palette.black : Colors.transparent,
            title: Text(
              'Armory',
              style:
                  ValoTypoGraph.heading2.black.copyWith(color: Palette.white),
            ),
          ),
          body: CustomScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discovery',
                        style: ValoTypoGraph.body1.black
                            .copyWith(color: Palette.white),
                      ),
                      Text(
                        'Armory Lab',
                        style: ValoTypoGraph.heading3.black
                            .copyWith(color: Palette.white),
                      ),
                      const Expanded(child: ArmoryCardWidget()),
                      const Gap(100),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
