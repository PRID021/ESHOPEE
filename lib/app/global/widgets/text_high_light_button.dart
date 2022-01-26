import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHighLightButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final Color textColor;
  final Color backgroundColor;

  const TextHighLightButton({
    Key? key,
    this.onPressed,
    required this.title,
    required this.textColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Material(
        color: backgroundColor,
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              SizeHelper.getHeight(context, 32),
            ),
          ),
          onTap: onPressed,
          child: Container(
            width: SizeHelper.getWidth(context, 80),
            height: SizeHelper.getWidth(context, 23.88),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.transparent,
              border: Border.all(
                color: textColor,
                width: SizeHelper.getWidth(context, 1),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
