// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeaponDetailModel _$WeaponDetailModelFromJson(Map<String, dynamic> json) =>
    WeaponDetailModel(
      status: json['status'] as int,
      data:
          WeaponDetailDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

WeaponDetailDataModel _$WeaponDetailDataModelFromJson(
  Map<String, dynamic> json,
) =>
    WeaponDetailDataModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      category: json['category'] as String,
      defaultSkinUuid: json['defaultSkinUuid'] as String,
      displayIcon: json['displayIcon'] as String,
      killStreamIcon: json['killStreamIcon'] as String,
      assetPath: json['assetPath'] as String,
      skins: (json['skins'] as List<dynamic>)
          .map((e) => WeaponDetailSkinModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      weaponStats: WeaponDetailStatsModel.fromJson(
        json['weaponStats'] as Map<String, dynamic>,
      ),
    );

WeaponDetailShopDataModel _$WeaponDetailShopDataModelFromJson(
  Map<String, dynamic> json,
) =>
    WeaponDetailShopDataModel(
      cost: json['cost'] as int,
      category: json['category'] as String,
      categoryText: json['categoryText'] as String,
      canBeTrashed: json['canBeTrashed'] as bool,
      image: json['image'],
      newImage: json['newImage'] as String,
      newImage2: json['newImage2'],
      assetPath: json['assetPath'] as String,
    );

WeaponDetailGridPositionModel _$WeaponDetailGridPositionModelFromJson(
  Map<String, dynamic> json,
) =>
    WeaponDetailGridPositionModel(
      row: json['row'] as int,
      column: json['column'] as int,
    );

WeaponDetailSkinModel _$WeaponDetailSkinModelFromJson(
  Map<String, dynamic> json,
) =>
    WeaponDetailSkinModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      themeUuid: json['themeUuid'] as String,
      contentTierUuid: json['contentTierUuid'] as String?,
      wallpaper: json['wallpaper'],
      assetPath: json['assetPath'] as String,
      chromas: (json['chromas'] as List<dynamic>)
          .map(
            (e) => WeaponDetailChromaModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      levels: (json['levels'] as List<dynamic>)
          .map(
            (e) => WeaponDetailLevelModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

WeaponDetailChromaModel _$WeaponDetailChromaModelFromJson(
  Map<String, dynamic> json,
) =>
    WeaponDetailChromaModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      displayIcon: json['displayIcon'] as String?,
      fullRender: json['fullRender'] as String,
      swatch: json['swatch'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String,
    );

WeaponDetailLevelModel _$WeaponDetailLevelModelFromJson(
  Map<String, dynamic> json,
) =>
    WeaponDetailLevelModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      levelItem: json['levelItem'] as String?,
      displayIcon: json['displayIcon'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String,
    );

WeaponDetailStatsModel _$WeaponDetailStatsModelFromJson(
  Map<String, dynamic> json,
) =>
    WeaponDetailStatsModel(
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
            (e) => WeaponDetailDamageRangeModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

WeaponDetailAdsStatsModel _$WeaponDetailAdsStatsModelFromJson(
  Map<String, dynamic> json,
) =>
    WeaponDetailAdsStatsModel(
      zoomMultiplier: (json['zoomMultiplier'] as num).toDouble(),
      fireRate: (json['fireRate'] as num).toDouble(),
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num).toDouble(),
      burstCount: json['burstCount'] as int,
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num).toDouble(),
    );

WeaponDetailDamageRangeModel _$WeaponDetailDamageRangeModelFromJson(
  Map<String, dynamic> json,
) =>
    WeaponDetailDamageRangeModel(
      rangeStartMeters: json['rangeStartMeters'] as int,
      rangeEndMeters: json['rangeEndMeters'] as int,
      headDamage: (json['headDamage'] as num).toDouble(),
      bodyDamage: json['bodyDamage'] as int,
      legDamage: (json['legDamage'] as num).toDouble(),
    );
