import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/presentation/content/weapon/weapon_detail_content.dart';
import 'package:valotod_app/features/armory/presentation/cubit/weapon/weapon_cubit.dart';

class WeaponContent extends StatefulWidget {
  const WeaponContent({super.key});

  @override
  State<WeaponContent> createState() => _WeaponContentState();
}

class _WeaponContentState extends State<WeaponContent> {
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
              'Weapon',
              style: ValoTypoGraph.heading2.bold.copyWith(),
            ),
          ),
          body: BlocBuilder<WeaponCubit, WeaponState>(
            builder: (context, state) {
              return CustomScrollView(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: WeaponDetailContent(
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
