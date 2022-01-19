import 'package:flutter/material.dart';

abstract class SizeHelper {
  static const double _widthDesign = 360.0;
  static const double _heightDesign = 640.0;

  static double getWidth(BuildContext context, double width) {
    print('width: ${MediaQuery.of(context).size.width}');
    return (MediaQuery.of(context).size.width / _widthDesign) * width;
  }

  static double getHeight(BuildContext context, double height) {
    print('height: ${MediaQuery.of(context).size.height}');
    return (MediaQuery.of(context).size.height / _heightDesign) * height;
  }
}
