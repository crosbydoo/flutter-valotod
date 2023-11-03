import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/features/home/presentation/widgets/appbar_widget.dart';
import 'package:valotod_app/features/home/presentation/widgets/featured_widget.dart';
import 'package:valotod_app/features/home/presentation/widgets/header_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final _scrollController = ScrollController();
  final _isScrolled = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      _isScrolled.value = _scrollController.offset > 0;
    });

    return ValueListenableBuilder<bool>(
      valueListenable: _isScrolled,
      builder: (context, value, _) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor:
                _isScrolled.value ? Palette.black : Colors.transparent,
            centerTitle: false,
            title: const AppbarWidget(),
          ),
          body: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: _scrollController,
            slivers: const [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderWidget(),
                      Gap(32),
                      Expanded(
                        child: FeaturedWidget(),
                      ),
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
