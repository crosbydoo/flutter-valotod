/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontGen {
  const $AssetsFontGen();

  /// File path: assets/font/Montserrat-Regular.ttf
  String get montserratRegular => 'assets/font/Montserrat-Regular.ttf';

  /// File path: assets/font/Montserrat-Variable.ttf
  String get montserratVariable => 'assets/font/Montserrat-Variable.ttf';

  /// File path: assets/font/Roboto-Medium.ttf
  String get robotoMedium => 'assets/font/Roboto-Medium.ttf';

  /// List of all assets
  List<String> get values =>
      [montserratRegular, montserratVariable, robotoMedium];
}

class $AssetsGifGen {
  const $AssetsGifGen();

  /// File path: assets/gif/jett.gif
  AssetGenImage get jett => const AssetGenImage('assets/gif/jett.gif');

  /// List of all assets
  List<AssetGenImage> get values => [jett];
}

class $AssetsImgGen {
  const $AssetsImgGen();

  /// File path: assets/img/agent_valo.png
  AssetGenImage get agentValo =>
      const AssetGenImage('assets/img/agent_valo.png');

  /// File path: assets/img/fade_valo.jpeg
  AssetGenImage get fadeValo =>
      const AssetGenImage('assets/img/fade_valo.jpeg');

  /// File path: assets/img/jett.png
  AssetGenImage get jett => const AssetGenImage('assets/img/jett.png');

  /// File path: assets/img/omen.png
  AssetGenImage get omen => const AssetGenImage('assets/img/omen.png');

  /// File path: assets/img/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/img/splash.png');

  /// File path: assets/img/weapon_valo.png
  AssetGenImage get weaponValo =>
      const AssetGenImage('assets/img/weapon_valo.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [agentValo, fadeValo, jett, omen, splash, weaponValo];
}

class Assets {
  Assets._();

  static const $AssetsFontGen font = $AssetsFontGen();
  static const $AssetsGifGen gif = $AssetsGifGen();
  static const $AssetsImgGen img = $AssetsImgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
