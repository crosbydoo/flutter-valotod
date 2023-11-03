// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeaponModel _$WeaponModelFromJson(Map<String, dynamic> json) => WeaponModel(
      status: json['status'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => WeaponDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

WeaponDataModel _$WeaponDataModelFromJson(Map<String, dynamic> json) =>
    WeaponDataModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      category: json['category'] as String,
      defaultSkinUuid: json['defaultSkinUuid'] as String,
      displayIcon: json['displayIcon'] as String,
      killStreamIcon: json['killStreamIcon'] as String,
      assetPath: json['assetPath'] as String,
      skins: (json['skins'] as List<dynamic>)
          .map((e) => WeaponSkinModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

WeaponShopDataModel _$WeaponShopDataModelFromJson(Map<String, dynamic> json) =>
    WeaponShopDataModel(
      cost: json['cost'] as int,
      category: json['category'] as String,
      categoryText: json['categoryText'] as String,
      canBeTrashed: json['canBeTrashed'] as bool,
      image: json['image'],
      newImage: json['newImage'] as String,
      newImage2: json['newImage2'],
      assetPath: json['assetPath'] as String,
    );

WeaponGridPositionModel _$WeaponGridPositionModelFromJson(
        Map<String, dynamic> json) =>
    WeaponGridPositionModel(
      row: json['row'] as int,
      column: json['column'] as int,
    );

WeaponSkinModel _$WeaponSkinModelFromJson(Map<String, dynamic> json) =>
    WeaponSkinModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      themeUuid: json['themeUuid'] as String,
      contentTierUuid: json['contentTierUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      wallpaper: json['wallpaper'],
      assetPath: json['assetPath'] as String,
      chromas: (json['chromas'] as List<dynamic>)
          .map((e) => WeaponChromaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      levels: (json['levels'] as List<dynamic>)
          .map((e) => WeaponLevelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

WeaponChromaModel _$WeaponChromaModelFromJson(Map<String, dynamic> json) =>
    WeaponChromaModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      displayIcon: json['displayIcon'] as String?,
      fullRender: json['fullRender'] as String,
      swatch: json['swatch'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String,
    );

WeaponLevelModel _$WeaponLevelModelFromJson(Map<String, dynamic> json) =>
    WeaponLevelModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      levelItem: json['levelItem'] as String?,
      displayIcon: json['displayIcon'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String,
    );

WeaponStatsModel _$WeaponStatsModelFromJson(Map<String, dynamic> json) =>
    WeaponStatsModel(
      fireRate: (json['fireRate'] as num).toDouble(),
      magazineSize: json['magazineSize'] as int,
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num).toDouble(),
      equipTimeSeconds: (json['equipTimeSeconds'] as num).toDouble(),
      reloadTimeSeconds: (json['reloadTimeSeconds'] as num).toDouble(),
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num).toDouble(),
      shotgunPelletCount: json['shotgunPelletCount'] as int,
      wallPenetration: json['wallPenetration'] as String,
      fireMode: json['fireMode'],
      altShotgunStats: json['altShotgunStats'],
      airBurstStats: json['airBurstStats'],
      damageRanges: (json['damageRanges'] as List<dynamic>)
          .map(
              (e) => WeaponDamageRangeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

WeaponAdsStatsModel _$WeaponAdsStatsModelFromJson(Map<String, dynamic> json) =>
    WeaponAdsStatsModel(
      zoomMultiplier: (json['zoomMultiplier'] as num).toDouble(),
      fireRate: (json['fireRate'] as num).toDouble(),
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num).toDouble(),
      burstCount: json['burstCount'] as int,
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num).toDouble(),
    );

WeaponDamageRangeModel _$WeaponDamageRangeModelFromJson(
        Map<String, dynamic> json) =>
    WeaponDamageRangeModel(
      rangeStartMeters: json['rangeStartMeters'] as int,
      rangeEndMeters: json['rangeEndMeters'] as int,
      headDamage: (json['headDamage'] as num).toDouble(),
      bodyDamage: json['bodyDamage'] as int,
      legDamage: (json['legDamage'] as num).toDouble(),
    );
