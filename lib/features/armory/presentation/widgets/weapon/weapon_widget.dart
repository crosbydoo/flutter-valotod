// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';
import 'package:valotod_app/features/armory/presentation/cubit/weapon/weapon_cubit.dart';
import 'package:valotod_app/features/armory/presentation/widgets/weapon/weapon_list_widget.dart';

class WeaponWidget extends StatefulWidget {
  const WeaponWidget({
    required this.state,
    super.key,
  });
  final WeaponState state;

  @override
  State<WeaponWidget> createState() => _WeaponWidgetState();
}

class _WeaponWidgetState extends State<WeaponWidget> {
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
        return BlocBuilder<WeaponCubit, WeaponState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                foregroundColor: Palette.white,
                backgroundColor:
                    _isScrolled.value ? Palette.black : Colors.transparent,
                title: Text(
                  'Weapons',
                  style: ValoTypoGraph.heading2.black
                      .copyWith(color: Palette.white),
                ),
              ),
              body: BlocBuilder<WeaponCubit, WeaponState>(
                builder: (context, state) {
                  print('Halo $state');
                  if (state is WeaponLoading) {
                    return const CircularProgressIndicator();
                  }
                  if (state is WeaponSuccess) {
                    print('Halo $state');
                    final data = state.result.data;

                    return CustomScrollView(
                      controller: _scrollController,
                      physics: const AlwaysScrollableScrollPhysics(),
                      slivers: [
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: WeaponListWidget(
                            data: data,
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
      },
    );
  }
}
