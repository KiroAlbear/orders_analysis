/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_average.svg
  String get icAverage => 'assets/icons/ic_average.svg';

  /// File path: assets/icons/ic_dollar.svg
  String get icDollar => 'assets/icons/ic_dollar.svg';

  /// File path: assets/icons/ic_next.svg
  String get icNext => 'assets/icons/ic_next.svg';

  /// File path: assets/icons/ic_returned.svg
  String get icReturned => 'assets/icons/ic_returned.svg';

  /// File path: assets/icons/ic_total.svg
  String get icTotal => 'assets/icons/ic_total.svg';

  /// List of all assets
  List<String> get values => [icAverage, icDollar, icNext, icReturned, icTotal];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/orders_bg.jpg
  AssetGenImage get ordersBg =>
      const AssetGenImage('assets/images/orders_bg.jpg');

  /// File path: assets/images/stats_bg.jpg
  AssetGenImage get statsBg =>
      const AssetGenImage('assets/images/stats_bg.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [ordersBg, statsBg];
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/orders.json
  String get orders => 'assets/json/orders.json';

  /// List of all assets
  List<String> get values => [orders];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
