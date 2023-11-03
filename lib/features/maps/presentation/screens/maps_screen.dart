import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/maps/presentation/cubit/maps_cubit.dart';
import 'package:valotod_app/features/maps/presentation/widgets/maps_widget.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  late MapsCubit mapsCubit = sl<MapsCubit>();

  @override
  void initState() {
    super.initState();
    mapsCubit.getMaps();
  }

  @override
  void dispose() {
    mapsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MapsCubit>(
      create: (context) => mapsCubit,
      child: RefreshIndicator(
        onRefresh: () async {
          await mapsCubit.getMaps();
        },
        child: const Stack(
          children: [
            ValoBackgroundBasicWidget(),
            MapsWidget(),
          ],
        ),
      ),
    );
  }
}
