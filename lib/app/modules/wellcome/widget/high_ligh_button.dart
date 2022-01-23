import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HighLightButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  const HighLightButton({
    Key? key,
    this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Material(
        color: kBackgroundHighLightColor,
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              SizeHelper.getHeight(context, 32),
            ),
          ),
          onTap: onPressed,
          child: Container(
            width: SizeHelper.getWidth(context, 143),
            height: SizeHelper.getHeight(context, 32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.transparent,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: SizeHelper.getHeight(context, 14),
                  fontWeight: FontWeight.w600,
                  color: kPrimaryTextColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
