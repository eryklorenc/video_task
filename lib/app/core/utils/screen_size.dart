import 'package:flutter/material.dart';

class ScreenSize {
  /// screen width in pixels
  final double wPx;

  /// screen height in pixels
  final double hPx;

  /// height in px of one unit */
  final double hMul;

  /// width in px of one unit */
  final double wMul;
  const ScreenSize._(this.wPx, this.hPx, this.hMul, this.wMul);
  static late ScreenSize _singleton;
  static initSingleton(BuildContext context) {
    _singleton = ScreenSize(context);
  }

  factory ScreenSize.singelton() {
    return _singleton;
  }

  /// Will divide screen into [widthUnitsCount] and [heightUnitsCount] of units.
  /// This units will become base unit to use in views.
  /// You should multiply unit by [wMul] and [hMul] to converts units to screen dependant pixel size.
  factory ScreenSize(BuildContext context, [int widthUnitsCount = 100, int heightUnitsCount = 100]) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double widthMultiplier = screenWidth / widthUnitsCount;
    double heightMultiplier = screenHeight / heightUnitsCount;
    return ScreenSize._(screenWidth, screenHeight, heightMultiplier, widthMultiplier);
  }
}

class EdgeInsetsSS extends EdgeInsets {
  const EdgeInsetsSS.fromLTRB(super.left, super.top, super.right, super.bottom) : super.fromLTRB();
  const EdgeInsetsSS.all(super.value) : super.all();
  const EdgeInsetsSS.only({
    super.left,
    super.top,
    super.right,
    super.bottom,
  }) : super.only();
  const EdgeInsetsSS.symmetric({
    super.vertical,
    super.horizontal,
  }) : super.symmetric();
  @override
  double get right => super.right * ScreenSize.singelton().wMul;
  @override
  double get left => super.left * ScreenSize.singelton().wMul;
  @override
  double get top => super.top * ScreenSize.singelton().hMul;
  @override
  double get bottom => super.bottom * ScreenSize.singelton().hMul;
}

class ContainerSS extends Container {
  ContainerSS(
      {super.key,
      super.alignment,
      super.padding,
      super.color,
      super.decoration,
      super.foregroundDecoration,
      double? width,
      double? height,
      super.constraints,
      super.margin,
      super.transform,
      super.child})
      : super(
            width: width == null ? width : width * ScreenSize.singelton().wMul,
            height: height == null ? height : height * ScreenSize.singelton().hMul);
}
