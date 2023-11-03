import 'package:flutter/material.dart';

class AgentHeaderContent extends StatelessWidget {
  const AgentHeaderContent({
    required this.background,
    required this.bgAgent,
    super.key,
  });
  final String background;
  final String bgAgent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: Image.network(
            background,
            scale: 2,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          top: 0,
          right: 0,
          child: Image.network(
            bgAgent,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
