import 'package:equatable/equatable.dart';

class MapsDetailEntity extends Equatable {
  const MapsDetailEntity({
    required this.status,
    required this.data,
  });
  final int status;
  final MapsDetailData data;

  @override
  List<Object?> get props => [status, data];
}

class MapsDetailData extends Equatable {
  const MapsDetailData({
    required this.uuid,
    required this.displayName,
    required this.narrativeDescription,
    required this.tacticalDescription,
    required this.coordinates,
    required this.displayIcon,
    required this.listViewIcon,
    required this.splash,
    required this.assetPath,
    required this.mapUrl,
    required this.xMultiplier,
    required this.yMultiplier,
    required this.xScalarToAdd,
    required this.yScalarToAdd,
    required this.callouts,
  });
  final String uuid;
  final String displayName;
  final String narrativeDescription;
  final String tacticalDescription;
  final String coordinates;
  final String displayIcon;
  final String listViewIcon;
  final String splash;
  final String assetPath;
  final String mapUrl;
  final double xMultiplier;
  final double yMultiplier;
  final double xScalarToAdd;
  final double yScalarToAdd;
  final List<MapsDetailCallout> callouts;

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

class MapsDetailCallout extends Equatable {
  const MapsDetailCallout({
    required this.regionName,
    required this.superRegionName,
    required this.location,
  });
  final String regionName;
  final String superRegionName;
  final MapsDetailLocation location;

  @override
  List<Object?> get props => [regionName, superRegionName, location];
}

class MapsDetailLocation extends Equatable {
  const MapsDetailLocation({
    required this.x,
    required this.y,
  });
  final double x;
  final double y;

  @override
  List<Object?> get props => [x, y];
}
