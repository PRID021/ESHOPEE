import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../gen/assets.gen.dart';
import '../../../constant/colors/color_constraints.dart';
import '../../../core/utils/size_helper.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final SvgGenImage iconImage;
  final Function() onPressed;
  const LoginButton({
    Key? key,
    required this.title,
    required this.iconImage,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          SizeHelper.getHeight(context, 10),
        ),
      ),
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: const EdgeInsets.only(bottom: 3.0),
          decoration: BoxDecoration(
            color: kButtonThemeColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: kButtonThemeColor.withOpacity(0.2),
                offset: const Offset(0.0, 1.0),
                blurRadius: 1,
              ),
            ],
          ),
          width: SizeHelper.getHeight(context, 300),
          height: SizeHelper.getHeight(context, 36),
          child: Stack(alignment: AlignmentDirectional.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: SizeHelper.getHeight(context, 20),
                ),
                iconImage.svg(
                  height: SizeHelper.getHeight(context, 20),
                ),
              ],
            ),
            Text(
              title,
              style: GoogleFonts.montserrat(
                color: kPrimaryTextColor,
                fontSize: SizeHelper.getHeight(context, 14),
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
