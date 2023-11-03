import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_detail_entity.dart';

part 'maps_detail_model.g.dart';

@JsonSerializable(createToJson: false)
class MapsDetailModel extends MapsDetailEntity {
  const MapsDetailModel({
    required super.status,
    required MapsDetailDataModel super.data,
  });
  factory MapsDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MapsDetailModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class MapsDetailDataModel extends MapsDetailData {
  const MapsDetailDataModel({
    required super.uuid,
    required super.displayName,
    required super.narrativeDescription,
    required super.tacticalDescription,
    required super.coordinates,
    required super.displayIcon,
    required super.listViewIcon,
    required super.splash,
    required super.assetPath,
    required super.mapUrl,
    required super.xMultiplier,
    required super.yMultiplier,
    required super.xScalarToAdd,
    required super.yScalarToAdd,
    required List<MapsDetailCalloutModel> super.callouts,
  });
  factory MapsDetailDataModel.fromJson(Map<String, dynamic> json) =>
      _$MapsDetailDataModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class MapsDetailCalloutModel extends MapsDetailCallout {
  const MapsDetailCalloutModel({
    required super.regionName,
    required super.superRegionName,
    required MapsDetailLocationModel super.location,
  });
  factory MapsDetailCalloutModel.fromJson(Map<String, dynamic> json) =>
      _$MapsDetailCalloutModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class MapsDetailLocationModel extends MapsDetailLocation {
  const MapsDetailLocationModel({required super.x, required super.y});
  factory MapsDetailLocationModel.fromJson(Map<String, dynamic> json) =>
      _$MapsDetailLocationModelFromJson(json);
}
