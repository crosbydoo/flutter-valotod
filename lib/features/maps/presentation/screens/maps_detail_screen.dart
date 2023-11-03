import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/maps/presentation/cubit/maps_cubit.dart';
import 'package:valotod_app/features/maps/presentation/widgets/maps_detail_widget.dart';

class MapsDetailScreen extends StatefulWidget {
  const MapsDetailScreen({required this.uuid, super.key});
  final String uuid;

  @override
  State<MapsDetailScreen> createState() => _MapsDetailScreenState();
}

class _MapsDetailScreenState extends State<MapsDetailScreen> {
  final mapsCubit = sl<MapsCubit>();

  @override
  void initState() {
    mapsCubit.getMapsDetail(widget.uuid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => mapsCubit,
      child: const Stack(
        children: [
          ValoBackgroundBasicWidget(),
          MapsDetailWidget(),
        ],
      ),
    );
  }
}
