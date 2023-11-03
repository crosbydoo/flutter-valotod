import 'package:equatable/equatable.dart';

class WeaponDetailEntity extends Equatable {
  const WeaponDetailEntity({
    required this.status,
    required this.data,
  });
  final int status;
  final WeaponDetailData data;

  @override
  List<Object?> get props => [status, data];
}

class WeaponDetailData extends Equatable {
  const WeaponDetailData({
    required this.uuid,
    required this.displayName,
    required this.category,
    required this.defaultSkinUuid,
    required this.displayIcon,
    required this.killStreamIcon,
    required this.assetPath,
    required this.skins,
    required this.weaponStats,
    this.shopData,
  });
  final String uuid;
  final String displayName;
  final String category;
  final String defaultSkinUuid;
  final String displayIcon;
  final String killStreamIcon;
  final String assetPath;
  final WeaponDetailStats weaponStats;
  final WeaponShopDetailData? shopData;
  final List<WeaponDetailSkin> skins;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        category,
        defaultSkinUuid,
        displayIcon,
        killStreamIcon,
        assetPath,
        weaponStats,
        shopData,
        skins,
      ];
}

class WeaponShopDetailData extends Equatable {
  const WeaponShopDetailData({
    required this.cost,
    required this.category,
    required this.categoryText,
    required this.canBeTrashed,
    required this.image,
    required this.newImage,
    required this.newImage2,
    required this.assetPath,
    this.gridPosition,
  });
  final int cost;
  final String category;
  final String categoryText;
  final WeaponDetailGridPosition? gridPosition;
  final bool canBeTrashed;
  final dynamic image;
  final String newImage;
  final dynamic newImage2;
  final String assetPath;

  @override
  List<Object?> get props => [
        cost,
        category,
        categoryText,
        gridPosition,
        canBeTrashed,
        image,
        newImage,
        newImage2,
        assetPath,
      ];
}

class WeaponDetailGridPosition extends Equatable {
  const WeaponDetailGridPosition({
    required this.row,
    required this.column,
  });
  final int row;
  final int column;

  @override
  List<Object?> get props => [row, column];
}

class WeaponDetailSkin extends Equatable {
  const WeaponDetailSkin({
    required this.uuid,
    required this.displayName,
    required this.themeUuid,
    required this.contentTierUuid,
    required this.wallpaper,
    required this.assetPath,
    required this.chromas,
    required this.levels,
    this.displayIcon,
  });
  final String uuid;
  final String displayName;
  final String themeUuid;
  final String? contentTierUuid;
  final String? displayIcon;
  final dynamic wallpaper;
  final String assetPath;
  final List<WeaponDetailChroma> chromas;
  final List<WeaponDetailLevel> levels;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        themeUuid,
        contentTierUuid,
        displayIcon,
        wallpaper,
        assetPath,
        chromas,
        levels,
      ];
}

class WeaponDetailChroma extends Equatable {
  const WeaponDetailChroma({
    required this.uuid,
    required this.displayName,
    required this.displayIcon,
    required this.fullRender,
    required this.swatch,
    required this.streamedVideo,
    required this.assetPath,
  });
  final String uuid;
  final String displayName;
  final String? displayIcon;
  final String fullRender;
  final String? swatch;
  final String? streamedVideo;
  final String assetPath;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        displayIcon,
        fullRender,
        swatch,
        streamedVideo,
        assetPath,
      ];
}

class WeaponDetailLevel extends Equatable {
  const WeaponDetailLevel({
    required this.uuid,
    required this.displayName,
    required this.levelItem,
    required this.displayIcon,
    required this.streamedVideo,
    required this.assetPath,
  });
  final String uuid;
  final String displayName;
  final String? levelItem;
  final String? displayIcon;
  final String? streamedVideo;
  final String assetPath;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        levelItem,
        displayIcon,
        streamedVideo,
        assetPath,
      ];
}

class WeaponDetailStats extends Equatable {
  const WeaponDetailStats({
    required this.fireRate,
    required this.magazineSize,
    required this.runSpeedMultiplier,
    required this.equipTimeSeconds,
    required this.reloadTimeSeconds,
    required this.firstBulletAccuracy,
    required this.shotgunPelletCount,
    required this.wallPenetration,
    required this.fireMode,
    required this.altShotgunStats,
    required this.airBurstStats,
    required this.damageRanges,
    this.adsStats,
    this.altFireType,
    this.feature,
  });
  final double fireRate;
  final int magazineSize;
  final double runSpeedMultiplier;
  final double equipTimeSeconds;
  final double reloadTimeSeconds;
  final double firstBulletAccuracy;
  final int shotgunPelletCount;
  final String wallPenetration;
  final String? feature;
  final dynamic fireMode;
  final String? altFireType;
  final WeaponDetailAdsStats? adsStats;
  final dynamic altShotgunStats;
  final dynamic airBurstStats;
  final List<WeaponDetailDamageRange> damageRanges;

  @override
  List<Object?> get props => [
        fireRate,
        magazineSize,
        runSpeedMultiplier,
        equipTimeSeconds,
        reloadTimeSeconds,
        firstBulletAccuracy,
        shotgunPelletCount,
        wallPenetration,
        feature,
        fireMode,
        altFireType,
        adsStats,
        altShotgunStats,
        airBurstStats,
        damageRanges,
      ];
}

class WeaponDetailAdsStats extends Equatable {
  const WeaponDetailAdsStats({
    required this.zoomMultiplier,
    required this.fireRate,
    required this.runSpeedMultiplier,
    required this.burstCount,
    required this.firstBulletAccuracy,
  });
  final double zoomMultiplier;
  final double fireRate;
  final double runSpeedMultiplier;
  final int burstCount;
  final double firstBulletAccuracy;

  @override
  List<Object?> get props => [
        zoomMultiplier,
        fireRate,
        runSpeedMultiplier,
        burstCount,
        firstBulletAccuracy,
      ];
}

class WeaponDetailDamageRange extends Equatable {
  const WeaponDetailDamageRange({
    required this.rangeStartMeters,
    required this.rangeEndMeters,
    required this.headDamage,
    required this.bodyDamage,
    required this.legDamage,
  });
  final int rangeStartMeters;
  final int rangeEndMeters;
  final double headDamage;
  final int bodyDamage;
  final double legDamage;

  @override
  List<Object?> get props => [
        rangeStartMeters,
        rangeEndMeters,
        headDamage,
        bodyDamage,
        legDamage,
      ];
}
