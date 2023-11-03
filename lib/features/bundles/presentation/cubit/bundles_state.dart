part of 'bundles_cubit.dart';

abstract class BundlesState {}

class BundlesInitial extends BundlesState {}

class BundleLoading extends BundlesState {}

class BundleSuccess extends BundlesState {
  BundleSuccess(this.result);

  final BundleEntity result;
}

class BundleFailures extends BundlesState {
  BundleFailures(this.message);

  final String message;
}
