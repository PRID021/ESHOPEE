import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Assets.images.pRShop.svg(width: 225, height: 225),
      ),
    );
  }
}
