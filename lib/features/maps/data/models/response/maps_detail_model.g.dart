// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapsDetailModel _$MapsDetailModelFromJson(Map<String, dynamic> json) =>
    MapsDetailModel(
      status: json['status'] as int,
      data: MapsDetailDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

MapsDetailDataModel _$MapsDetailDataModelFromJson(Map<String, dynamic> json) =>
    MapsDetailDataModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      narrativeDescription: json['narrativeDescription'] as String,
      tacticalDescription: json['tacticalDescription'] as String,
      coordinates: json['coordinates'] as String,
      displayIcon: json['displayIcon'] as String,
      listViewIcon: json['listViewIcon'] as String,
      splash: json['splash'] as String,
      assetPath: json['assetPath'] as String,
      mapUrl: json['mapUrl'] as String,
      xMultiplier: (json['xMultiplier'] as num).toDouble(),
      yMultiplier: (json['yMultiplier'] as num).toDouble(),
      xScalarToAdd: (json['xScalarToAdd'] as num).toDouble(),
      yScalarToAdd: (json['yScalarToAdd'] as num).toDouble(),
      callouts: (json['callouts'] as List<dynamic>)
          .map(
              (e) => MapsDetailCalloutModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

MapsDetailCalloutModel _$MapsDetailCalloutModelFromJson(
        Map<String, dynamic> json) =>
    MapsDetailCalloutModel(
      regionName: json['regionName'] as String,
      superRegionName: json['superRegionName'] as String,
      location: MapsDetailLocationModel.fromJson(
          json['location'] as Map<String, dynamic>),
    );

MapsDetailLocationModel _$MapsDetailLocationModelFromJson(
        Map<String, dynamic> json) =>
    MapsDetailLocationModel(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );
