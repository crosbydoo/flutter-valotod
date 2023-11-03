import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/armory/domain/entities/weapon_detail_entity.dart';

part 'weapon_detail_model.g.dart';

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDetailModel extends WeaponDetailEntity {
  const WeaponDetailModel({
    required super.status,
    required WeaponDetailDataModel super.data,
  });
  factory WeaponDetailModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDetailModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDetailDataModel extends WeaponDetailData {
  const WeaponDetailDataModel({
    required super.uuid,
    required super.displayName,
    required super.category,
    required super.defaultSkinUuid,
    required super.displayIcon,
    required super.killStreamIcon,
    required super.assetPath,
    required List<WeaponDetailSkinModel> super.skins,
    required WeaponDetailStatsModel super.weaponStats,
  });
  factory WeaponDetailDataModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDetailDataModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDetailShopDataModel extends WeaponShopDetailData {
  const WeaponDetailShopDataModel({
    required super.cost,
    required super.category,
    required super.categoryText,
    required super.canBeTrashed,
    required super.image,
    required super.newImage,
    required super.newImage2,
    required super.assetPath,
  });

  factory WeaponDetailShopDataModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDetailShopDataModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDetailGridPositionModel extends WeaponDetailGridPosition {
  const WeaponDetailGridPositionModel({
    required super.row,
    required super.column,
  });
  factory WeaponDetailGridPositionModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDetailGridPositionModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDetailSkinModel extends WeaponDetailSkin {
  const WeaponDetailSkinModel({
    required super.uuid,
    required super.displayName,
    required super.themeUuid,
    required super.contentTierUuid,
    required super.wallpaper,
    required super.assetPath,
    required List<WeaponDetailChromaModel> super.chromas,
    required List<WeaponDetailLevelModel> super.levels,
  });
  factory WeaponDetailSkinModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDetailSkinModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDetailChromaModel extends WeaponDetailChroma {
  const WeaponDetailChromaModel({
    required super.uuid,
    required super.displayName,
    required super.displayIcon,
    required super.fullRender,
    required super.swatch,
    required super.streamedVideo,
    required super.assetPath,
  });

  factory WeaponDetailChromaModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDetailChromaModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDetailLevelModel extends WeaponDetailLevel {
  const WeaponDetailLevelModel({
    required super.uuid,
    required super.displayName,
    required super.levelItem,
    required super.displayIcon,
    required super.streamedVideo,
    required super.assetPath,
  });
  factory WeaponDetailLevelModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDetailLevelModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDetailStatsModel extends WeaponDetailStats {
  const WeaponDetailStatsModel({
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
    required List<WeaponDetailDamageRangeModel> super.damageRanges,
  });
  factory WeaponDetailStatsModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDetailStatsModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDetailAdsStatsModel extends WeaponDetailAdsStats {
  const WeaponDetailAdsStatsModel({
    required super.zoomMultiplier,
    required super.fireRate,
    required super.runSpeedMultiplier,
    required super.burstCount,
    required super.firstBulletAccuracy,
  });
  factory WeaponDetailAdsStatsModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDetailAdsStatsModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class WeaponDetailDamageRangeModel extends WeaponDetailDamageRange {
  const WeaponDetailDamageRangeModel({
    required super.rangeStartMeters,
    required super.rangeEndMeters,
    required super.headDamage,
    required super.bodyDamage,
    required super.legDamage,
  });
  factory WeaponDetailDamageRangeModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponDetailDamageRangeModelFromJson(json);
}
