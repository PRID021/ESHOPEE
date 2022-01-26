import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../product_detail_controller.dart';

class StarsRatingBar extends StatelessWidget {
  const StarsRatingBar({
    Key? key,
    required ProductDetailController controller,
  })  : _controller = controller,
        super(key: key);

  final ProductDetailController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 4, 20, 0),
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: kPrimaryTextColor),
      ),
      child: Obx(
        () => RatingBar.builder(
          itemSize: SizeHelper.getWidth(context, 15),
          initialRating: _controller.product.value?.stars ?? 1,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: kBackgroundStarsColor,
          ),
          onRatingUpdate: (rating) {},
          ignoreGestures: true,
        ),
      ),
    );
  }
}
