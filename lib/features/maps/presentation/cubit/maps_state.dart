part of 'maps_cubit.dart';

abstract class MapsState {}

class MapsInitial extends MapsState {}

class MapsLoading extends MapsState {}

final class MapsSuccess extends MapsState {
  MapsSuccess(this.result);

  final MapsEntity result;
}

final class MapsDetailSuccess extends MapsState {
  MapsDetailSuccess(this.result);

  final MapsDetailEntity result;
}

final class MapsFailure extends MapsState {
  MapsFailure(this.message);

  final String message;
}
