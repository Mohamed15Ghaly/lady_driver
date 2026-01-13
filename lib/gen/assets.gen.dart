// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Alexandria-Black.ttf
  String get alexandriaBlack => 'assets/fonts/Alexandria-Black.ttf';

  /// File path: assets/fonts/Alexandria-Bold.ttf
  String get alexandriaBold => 'assets/fonts/Alexandria-Bold.ttf';

  /// File path: assets/fonts/Alexandria-ExtraBold.ttf
  String get alexandriaExtraBold => 'assets/fonts/Alexandria-ExtraBold.ttf';

  /// File path: assets/fonts/Alexandria-ExtraLight.ttf
  String get alexandriaExtraLight => 'assets/fonts/Alexandria-ExtraLight.ttf';

  /// File path: assets/fonts/Alexandria-Light.ttf
  String get alexandriaLight => 'assets/fonts/Alexandria-Light.ttf';

  /// File path: assets/fonts/Alexandria-Medium.ttf
  String get alexandriaMedium => 'assets/fonts/Alexandria-Medium.ttf';

  /// File path: assets/fonts/Alexandria-Regular.ttf
  String get alexandriaRegular => 'assets/fonts/Alexandria-Regular.ttf';

  /// File path: assets/fonts/Alexandria-SemiBold.ttf
  String get alexandriaSemiBold => 'assets/fonts/Alexandria-SemiBold.ttf';

  /// File path: assets/fonts/Alexandria-Thin.ttf
  String get alexandriaThin => 'assets/fonts/Alexandria-Thin.ttf';

  /// File path: assets/fonts/Alexandria-VariableFont_wght.ttf
  String get alexandriaVariableFontWght =>
      'assets/fonts/Alexandria-VariableFont_wght.ttf';

  /// File path: assets/fonts/Alexandria.zip
  String get alexandria => 'assets/fonts/Alexandria.zip';

  /// File path: assets/fonts/OFL.txt
  String get ofl => 'assets/fonts/OFL.txt';

  /// File path: assets/fonts/README.txt
  String get readme => 'assets/fonts/README.txt';

  /// List of all assets
  List<String> get values => [
    alexandriaBlack,
    alexandriaBold,
    alexandriaExtraBold,
    alexandriaExtraLight,
    alexandriaLight,
    alexandriaMedium,
    alexandriaRegular,
    alexandriaSemiBold,
    alexandriaThin,
    alexandriaVariableFontWght,
    alexandria,
    ofl,
    readme,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/By my car-cuate.png
  AssetGenImage get byMyCarCuate =>
      const AssetGenImage('assets/images/By my car-cuate.png');

  /// List of all assets
  List<AssetGenImage> get values => [byMyCarCuate];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
