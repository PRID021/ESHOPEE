/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsConfigGen {
  const $AssetsConfigGen();

  /// File path: assets/config/setting.json
  String get setting => 'assets/config/setting.json';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/PRShop.svg
  SvgGenImage get pRShop => const SvgGenImage('assets/images/PRShop.svg');

  /// File path: assets/images/facebook.svg
  SvgGenImage get facebook => const SvgGenImage('assets/images/facebook.svg');

  /// File path: assets/images/google.svg
  SvgGenImage get google => const SvgGenImage('assets/images/google.svg');

  /// File path: assets/images/loading.gif
  AssetGenImage get loading => const AssetGenImage('assets/images/loading.gif');

  /// File path: assets/images/prshop_ad1.svg
  SvgGenImage get prshopAd1 =>
      const SvgGenImage('assets/images/prshop_ad1.svg');

  /// File path: assets/images/prshop_adv.svg
  SvgGenImage get prshopAdv =>
      const SvgGenImage('assets/images/prshop_adv.svg');

  /// File path: assets/images/prshop_icon.svg
  SvgGenImage get prshopIcon =>
      const SvgGenImage('assets/images/prshop_icon.svg');

  /// File path: assets/images/prshop_icon_v2.svg
  SvgGenImage get prshopIconV2 =>
      const SvgGenImage('assets/images/prshop_icon_v2.svg');

  /// File path: assets/images/shopping.svg
  SvgGenImage get shopping => const SvgGenImage('assets/images/shopping.svg');

  /// File path: assets/images/wellcome_1.svg
  SvgGenImage get wellcome1 =>
      const SvgGenImage('assets/images/wellcome_1.svg');

  /// File path: assets/images/wellcome_2.svg
  SvgGenImage get wellcome2 =>
      const SvgGenImage('assets/images/wellcome_2.svg');

  /// File path: assets/images/wellcome_3.svg
  SvgGenImage get wellcome3 =>
      const SvgGenImage('assets/images/wellcome_3.svg');
}

class Assets {
  Assets._();

  static const $AssetsConfigGen config = $AssetsConfigGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
    );
  }

  String get path => _assetName;
}
