import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:eshopee/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../product_detail_controller.dart';

class SmallDescriptionImage extends StatelessWidget {
  const SmallDescriptionImage({
    Key? key,
    required ProductDetailController controller,
    required int imageIndex,
    required Function(int) ontap,
  })  : _controller = controller,
        _imageIndex = imageIndex,
        _ontap = ontap,
        super(key: key);

  final ProductDetailController _controller;
  final int _imageIndex;
  final Function(int) _ontap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _ontap(_imageIndex),
        child: Obx(
          () => Container(
            width: SizeHelper.getWidth(context, 55),
            height: SizeHelper.getWidth(context, 55),
            decoration: BoxDecoration(
              color: kPrimaryTextColor,
              borderRadius: BorderRadius.circular(10.0),
              border: _controller.imageForceIndex.value == _imageIndex
                  ? Border.all(
                      color: kBackgroundHighLightColor,
                      width: 3.0,
                    )
                  : Border.all(
                      color: kBackgroundColor,
                      width: 1.0,
                    ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: _controller.product.value?.images != null
                  ? FadeInImage.assetNetwork(
                      image: _controller.product.value!.images[_imageIndex],
                      fit: BoxFit.contain,
                      placeholder: Assets.images.circleLoading.path,
                    )
                  : const Placeholder(),
            ),
          ),
        ),
      ),
    );
  }
}
