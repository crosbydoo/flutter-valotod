import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_entity.dart';

part 'maps_model.g.dart';

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class MapsModel extends MapsEntity {
  const MapsModel({
    required super.status,
    required List<MapsDataModel> super.data,
  });
  factory MapsModel.fromJson(Map<String, dynamic> json) =>
      _$MapsModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class MapsDataModel extends MapsData {
  const MapsDataModel({
    required super.uuid,
    required super.displayName,
    required super.listViewIcon,
    required super.splash,
    required super.assetPath,
    required super.mapUrl,
    required super.xMultiplier,
    required super.yMultiplier,
    required super.xScalarToAdd,
    required super.yScalarToAdd,
  });

  factory MapsDataModel.fromJson(Map<String, dynamic> json) =>
      _$MapsDataModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class CalloutModel extends Callout {
  const CalloutModel({
    required super.regionName,
    required super.superRegionName,
    required LocationModel super.location,
  });
  factory CalloutModel.fromJson(Map<String, dynamic> json) =>
      _$CalloutModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class LocationModel extends Location {
  const LocationModel({required super.x, required super.y});
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
