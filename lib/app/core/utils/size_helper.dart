import 'package:flutter/material.dart';

abstract class SizeHelper {
  static const double _widthDesign = 360.0;
  static const double _heightDesign = 640.0;

  static double getWidth(BuildContext context, double width) {
    return (MediaQuery.of(context).size.width / _widthDesign) * width;
  }

  static double getHeight(BuildContext context, double height) {
    return (MediaQuery.of(context).size.height / _heightDesign) * height;
  }
}
