import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:eshopee/app/core/values/sign_in_type.dart';
import 'package:eshopee/app/modules/login/login_controller.dart';
import 'package:eshopee/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final LoginController _controller = Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: kBackgroundColor,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Column(
            children: [
              SizedBox(
                height: SizeHelper.getHeight(context, 16),
              ),
              Assets.images.prshopIconV2.svg(
                height: SizeHelper.getHeight(context, 125),
              ),
              SizedBox(
                height: SizeHelper.getHeight(context, 16),
              ),
              Assets.images.prshopAdv.svg(
                height: SizeHelper.getHeight(context, 250),
              ),
              Text(
                'Saving money and time with PRShop today!',
                style: GoogleFonts.montserrat(
                  color: kPrimaryTextColor,
                  fontSize: SizeHelper.getHeight(context, 14),
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: SizeHelper.getHeight(context, 24),
              ),
              LoginButton(
                title: 'Continue with Facebook',
                onPressed: () {},
                iconImage: Assets.images.facebook,
              ),
              SizedBox(
                height: SizeHelper.getHeight(context, 8),
              ),
              LoginButton(
                title: 'Continue with Gogole',
                onPressed: () async {
                  await _controller.handleSignIn(SignInType.google);
                },
                iconImage: Assets.images.google,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
