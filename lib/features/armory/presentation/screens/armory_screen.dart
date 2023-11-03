import 'package:flutter/material.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/armory/presentation/widgets/armory_widget.dart';

class ArmoryScreen extends StatefulWidget {
  const ArmoryScreen({super.key});

  @override
  State<ArmoryScreen> createState() => _ArmoryScreenState();
}

class _ArmoryScreenState extends State<ArmoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ValoBackgroundBasicWidget(),
        ArmoryWidget(),
      ],
    );
  }
}
