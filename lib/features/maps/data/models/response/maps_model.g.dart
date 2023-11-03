// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapsModel _$MapsModelFromJson(Map<String, dynamic> json) => MapsModel(
      status: json['status'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => MapsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

MapsDataModel _$MapsDataModelFromJson(Map<String, dynamic> json) =>
    MapsDataModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      listViewIcon: json['listViewIcon'] as String,
      splash: json['splash'] as String,
      assetPath: json['assetPath'] as String,
      mapUrl: json['mapUrl'] as String,
      xMultiplier: (json['xMultiplier'] as num).toDouble(),
      yMultiplier: (json['yMultiplier'] as num).toDouble(),
      xScalarToAdd: (json['xScalarToAdd'] as num).toDouble(),
      yScalarToAdd: (json['yScalarToAdd'] as num).toDouble(),
    );

CalloutModel _$CalloutModelFromJson(Map<String, dynamic> json) => CalloutModel(
      regionName: json['regionName'] as String,
      superRegionName: json['superRegionName'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );
