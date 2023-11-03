// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BundleModel _$BundleModelFromJson(Map<String, dynamic> json) => BundleModel(
      status: json['status'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => BundleDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

BundleDataModel _$BundleDataModelFromJson(Map<String, dynamic> json) =>
    BundleDataModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      displayNameSubText: json['displayNameSubText'] as String?,
      description: json['description'] as String,
      extraDescription: json['extraDescription'] as String?,
      promoDescription: json['promoDescription'] as String?,
      useAdditionalContext: json['useAdditionalContext'] as bool,
      displayIcon: json['displayIcon'] as String,
      displayIcon2: json['displayIcon2'] as String,
      verticalPromoImage: json['verticalPromoImage'] as String?,
      assetPath: json['assetPath'] as String,
    );
