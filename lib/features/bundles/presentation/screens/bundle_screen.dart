import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valotod_app/core/di/injection.dart';
import 'package:valotod_app/core/shared/widgets/valobackground_basic_widget.dart';
import 'package:valotod_app/features/bundles/presentation/cubit/bundles_cubit.dart';
import 'package:valotod_app/features/bundles/presentation/widgets/bundle_widget.dart';

class BundleScreen extends StatefulWidget {
  const BundleScreen({super.key});

  @override
  State<BundleScreen> createState() => _BundleScreenState();
}

class _BundleScreenState extends State<BundleScreen> {
  final bundleCubit = sl<BundlesCubit>();

  @override
  void initState() {
    bundleCubit.getBundles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bundleCubit,
      child: const Stack(
        children: [
          ValoBackgroundBasicWidget(),
          BundleWidget(),
        ],
      ),
    );
  }
}
