import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_entity.dart';

part 'weapon_model.g.dart';

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponModel extends WeaponEntity {
  const WeaponModel({
    required super.status,
    required List<WeaponDataModel> super.data,
  });
  factory WeaponModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDataModel extends WeaponData {
  const WeaponDataModel({
    required super.uuid,
    required super.displayName,
    required super.category,
    required super.defaultSkinUuid,
    required super.displayIcon,
    required super.killStreamIcon,
    required super.assetPath,
    required List<WeaponSkinModel> super.skins,
  });
  factory WeaponDataModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDataModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponShopDataModel extends WeaponShopData {
  const WeaponShopDataModel({
    required super.cost,
    required super.category,
    required super.categoryText,
    required super.canBeTrashed,
    required super.image,
    required super.newImage,
    required super.newImage2,
    required super.assetPath,
  });

  factory WeaponShopDataModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponShopDataModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponGridPositionModel extends WeaponGridPosition {
  const WeaponGridPositionModel({required super.row, required super.column});
  factory WeaponGridPositionModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponGridPositionModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponSkinModel extends WeaponSkin {
  const WeaponSkinModel({
    required super.uuid,
    required super.displayName,
    required super.themeUuid,
    required super.contentTierUuid,
    required super.displayIcon,
    required super.wallpaper,
    required super.assetPath,
    required List<WeaponChromaModel> super.chromas,
    required List<WeaponLevelModel> super.levels,
  });
  factory WeaponSkinModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponSkinModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponChromaModel extends WeaponChroma {
  const WeaponChromaModel({
    required super.uuid,
    required super.displayName,
    required super.displayIcon,
    required super.fullRender,
    required super.swatch,
    required super.streamedVideo,
    required super.assetPath,
  });

  factory WeaponChromaModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponChromaModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponLevelModel extends WeaponLevel {
  const WeaponLevelModel({
    required super.uuid,
    required super.displayName,
    required super.levelItem,
    required super.displayIcon,
    required super.streamedVideo,
    required super.assetPath,
  });
  factory WeaponLevelModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponLevelModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponStatsModel extends WeaponStats {
  const WeaponStatsModel({
    required super.fireRate,
    required super.magazineSize,
    required super.runSpeedMultiplier,
    required super.equipTimeSeconds,
    required super.reloadTimeSeconds,
    required super.firstBulletAccuracy,
    required super.shotgunPelletCount,
    required super.wallPenetration,
    required super.fireMode,
    required super.altShotgunStats,
    required super.airBurstStats,
    required List<WeaponDamageRangeModel> super.damageRanges,
  });
  factory WeaponStatsModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponStatsModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponAdsStatsModel extends WeaponAdsStats {
  const WeaponAdsStatsModel({
    required super.zoomMultiplier,
    required super.fireRate,
    required super.runSpeedMultiplier,
    required super.burstCount,
    required super.firstBulletAccuracy,
  });
  factory WeaponAdsStatsModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponAdsStatsModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDamageRangeModel extends WeaponDamageRange {
  const WeaponDamageRangeModel({
    required super.rangeStartMeters,
    required super.rangeEndMeters,
    required super.headDamage,
    required super.bodyDamage,
    required super.legDamage,
  });
  factory WeaponDamageRangeModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDamageRangeModelFromJson(json);
}
