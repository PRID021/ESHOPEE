import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:eshopee/app/modules/splash/spash_controller.dart';
import 'package:eshopee/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController controller = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        color: kBackgroundColor,
        child: Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Column(
              children: [
                SizedBox(
                  height: SizeHelper.getHeight(context, 70),
                ),
                Assets.images.pRShop.svg(
                  height: SizeHelper.getHeight(context, 300),
                ),
                SizedBox(
                  height: SizeHelper.getHeight(context, 143),
                ),
                SizedBox(
                  width: SizeHelper.getWidth(context, 238),
                  height: SizeHelper.getHeight(context, 32),
                  child: Text(
                    'Please wait minutes while we prepare data for you.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: SizeHelper.getHeight(context, 14),
                      fontWeight: FontWeight.normal,
                      color: kPrimaryTextColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeHelper.getHeight(context, 9),
                ),
                Assets.images.loading.image(
                  height: SizeHelper.getHeight(context, 40),
                ),
                SizedBox(
                  height: SizeHelper.getHeight(context, 36),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
