import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:eshopee/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashContent extends StatelessWidget {
  final String title;
  final String subTitle;
  final SvgGenImage image;
  const SplashContent({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeHelper.getHeight(context, 150),
        ),
        image.svg(
          width: SizeHelper.getWidth(context, 320),
          height: SizeHelper.getHeight(context, 230),
        ),
        SizedBox(
          height: SizeHelper.getHeight(context, 24),
        ),
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: SizeHelper.getHeight(context, 16),
            fontWeight: FontWeight.normal,
            color: kPrimaryTextColor,
          ),
        ),
        SizedBox(
          height: SizeHelper.getHeight(context, 24),
        ),
        SizedBox(
          width: SizeHelper.getWidth(context, 268),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: SizeHelper.getHeight(context, 14),
              fontWeight: FontWeight.normal,
              color: kPrimaryTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
