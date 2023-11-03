import 'package:equatable/equatable.dart';

class MapsEntity extends Equatable {
  const MapsEntity({
    required this.status,
    required this.data,
  });
  final int status;
  final List<MapsData> data;

  @override
  List<Object?> get props => [status, data];
}

class MapsData extends Equatable {
  const MapsData({
    required this.uuid,
    required this.displayName,
    required this.listViewIcon,
    required this.splash,
    required this.assetPath,
    required this.mapUrl,
    required this.xMultiplier,
    required this.yMultiplier,
    required this.xScalarToAdd,
    required this.yScalarToAdd,
    this.callouts,
    this.displayIcon,
    this.coordinates,
    this.tacticalDescription,
    this.narrativeDescription,
  });
  final String uuid;
  final String displayName;
  final String? narrativeDescription;
  final String? tacticalDescription;
  final String? coordinates;
  final String? displayIcon;
  final String listViewIcon;
  final String splash;
  final String assetPath;
  final String mapUrl;
  final double xMultiplier;
  final double yMultiplier;
  final double xScalarToAdd;
  final double yScalarToAdd;
  final List<Callout>? callouts;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        narrativeDescription,
        tacticalDescription,
        coordinates,
        displayIcon,
        listViewIcon,
        splash,
        assetPath,
        mapUrl,
        xMultiplier,
        yMultiplier,
        xScalarToAdd,
        yScalarToAdd,
        callouts,
      ];
}

class Callout extends Equatable {
  const Callout({
    required this.regionName,
    required this.superRegionName,
    required this.location,
  });
  final String regionName;
  final String superRegionName;
  final Location location;

  @override
  List<Object?> get props => [regionName, superRegionName, location];
}

class Location extends Equatable {
  const Location({
    required this.x,
    required this.y,
  });
  final double x;
  final double y;

  @override
  List<Object?> get props => [x, y];
}
