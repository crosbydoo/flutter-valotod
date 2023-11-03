import 'package:flutter/material.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_detail_entity.dart';

class WeaponSkinContent extends StatefulWidget {
  const WeaponSkinContent({required this.skins, super.key});
  final List<WeaponDetailSkin> skins;

  @override
  State<WeaponSkinContent> createState() => _WeaponSkinContentState();
}

class _WeaponSkinContentState extends State<WeaponSkinContent> {
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
              'Skins',
              style:
                  ValoTypoGraph.heading2.black.copyWith(color: Palette.white),
            ),
          ),
          body: CustomScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: List.generate(widget.skins.length, (index) {
                    final results = widget.skins[index];
                    final nameSkin = results.displayName;
                    final bgSkin = results.displayIcon;

                    print('check meki $bgSkin');

                    return Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 24,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Palette.black,
                        borderRadius: BorderRadius.circular(12),
                        image: bgSkin != null
                            ? DecorationImage(
                                image: NetworkImage(bgSkin),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nameSkin,
                              style: ValoTypoGraph.heading1.bold.copyWith(
                                color: Palette.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
