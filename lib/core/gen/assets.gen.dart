// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/earth.png
  AssetGenImage get earth => const AssetGenImage('assets/images/earth.png');

  /// File path: assets/images/home_top_bg.png
  AssetGenImage get homeTopBg =>
      const AssetGenImage('assets/images/home_top_bg.png');

  /// File path: assets/images/jupiter.png
  AssetGenImage get jupiter => const AssetGenImage('assets/images/jupiter.png');

  /// File path: assets/images/mars.png
  AssetGenImage get mars => const AssetGenImage('assets/images/mars.png');

  /// File path: assets/images/mercury.png
  AssetGenImage get mercury => const AssetGenImage('assets/images/mercury.png');

  /// File path: assets/images/neptune.png
  AssetGenImage get neptune => const AssetGenImage('assets/images/neptune.png');

  /// File path: assets/images/saturn.png
  AssetGenImage get saturn => const AssetGenImage('assets/images/saturn.png');

  /// File path: assets/images/splash_bg.png
  AssetGenImage get splashBg =>
      const AssetGenImage('assets/images/splash_bg.png');

  /// File path: assets/images/sun.png
  AssetGenImage get sun => const AssetGenImage('assets/images/sun.png');

  /// File path: assets/images/uranus.png
  AssetGenImage get uranus => const AssetGenImage('assets/images/uranus.png');

  /// File path: assets/images/venus.png
  AssetGenImage get venus => const AssetGenImage('assets/images/venus.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    earth,
    homeTopBg,
    jupiter,
    mars,
    mercury,
    neptune,
    saturn,
    splashBg,
    sun,
    uranus,
    venus,
  ];
}

class $AssetsModelsGen {
  const $AssetsModelsGen();

  /// File path: assets/models/earth.glb
  String get earth => 'assets/models/earth.glb';

  /// File path: assets/models/jupiter.glb
  String get jupiter => 'assets/models/jupiter.glb';

  /// File path: assets/models/mars.glb
  String get mars => 'assets/models/mars.glb';

  /// File path: assets/models/mercury.glb
  String get mercury => 'assets/models/mercury.glb';

  /// File path: assets/models/neptune.glb
  String get neptune => 'assets/models/neptune.glb';

  /// File path: assets/models/saturn.glb
  String get saturn => 'assets/models/saturn.glb';

  /// File path: assets/models/solar_system.glb
  String get solarSystem => 'assets/models/solar_system.glb';

  /// File path: assets/models/sun.glb
  String get sun => 'assets/models/sun.glb';

  /// File path: assets/models/uranus.glb
  String get uranus => 'assets/models/uranus.glb';

  /// File path: assets/models/venus.glb
  String get venus => 'assets/models/venus.glb';

  /// List of all assets
  List<String> get values => [
    earth,
    jupiter,
    mars,
    mercury,
    neptune,
    saturn,
    solarSystem,
    sun,
    uranus,
    venus,
  ];
}

abstract final class Assets {
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsModelsGen models = $AssetsModelsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
