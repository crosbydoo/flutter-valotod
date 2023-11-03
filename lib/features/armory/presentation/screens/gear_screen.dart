import 'package:flutter/material.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';

class GearScreen extends StatefulWidget {
  const GearScreen({super.key});

  @override
  State<GearScreen> createState() => _GearScreenState();
}

class _GearScreenState extends State<GearScreen> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ValoBackgroundBasicWidget(),
      ],
    );
  }
}
