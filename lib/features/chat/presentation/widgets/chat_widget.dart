import 'package:flutter/material.dart';
import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
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
            title: Text(
              'Talking With Other',
              style:
                  ValoTypoGraph.heading2.black.copyWith(color: Palette.white),
            ),
            automaticallyImplyLeading: false,
            backgroundColor:
                _isScrolled.value ? Palette.black : Colors.transparent,
          ),
          body: CustomScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: const [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Text('Halo'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
