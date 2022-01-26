import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:eshopee/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../product_detail_controller.dart';

class LargeDescriptionImage extends StatelessWidget {
  const LargeDescriptionImage({
    Key? key,
    required ProductDetailController controller,
  })  : _controller = controller,
        super(key: key);

  final ProductDetailController _controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: SizeHelper.getWidth(context, 201),
      height: SizeHelper.getWidth(context, 161),
      decoration: BoxDecoration(
        color: kPrimaryTextColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Obx(
        () => ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: (_controller.product.value?.images) != null
              ? FadeInImage.assetNetwork(
                  image: _controller.product.value!.images[_controller.imageForceIndex.value],
                  fit: BoxFit.contain,
                  placeholder: Assets.images.circleLoading.path,
                )
              : const Placeholder(),
        ),
      ),
    );
  }
}
