import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:eshopee/app/global/widgets/text_high_light_button.dart';
import 'package:eshopee/app/modules/product_detail/product_detail_controller.dart';
import 'package:eshopee/app/modules/product_detail/widget/large_description_image.dart';
import 'package:eshopee/app/modules/product_detail/widget/small_description_image.dart';
import 'package:eshopee/app/modules/product_detail/widget/stars_rating_bar.dart';
import 'package:eshopee/app/modules/product_detail/widget/tab_product_detail.dart';
import 'package:eshopee/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailScreen extends StatelessWidget {
  ProductDetailScreen({Key? key}) : super(key: key);
  // ignore: unused_field
  final ProductDetailController _controller = Get.find<ProductDetailController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          color: kBackgroundColor,
          child: Column(
            children: [
              Expanded(
                flex: 11,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Stack(
                            children: [
                              Assets.icons.arrowBack.svg(
                                width: 32,
                              ),
                              Positioned.fill(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeHelper.getHeight(context, 9),
                    ),
                    SizedBox(
                      width: SizeHelper.getWidth(context, 281),
                      height: SizeHelper.getWidth(context, 175),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SmallDescriptionImage(
                                controller: _controller,
                                imageIndex: 0,
                                ontap: (value) {
                                  _controller.imageForceIndex.value = value;
                                },
                              ),
                              SizedBox(
                                height: SizeHelper.getWidth(context, 5),
                              ),
                              SmallDescriptionImage(
                                controller: _controller,
                                imageIndex: 1,
                                ontap: (value) {
                                  _controller.imageForceIndex.value = value;
                                },
                              ),
                              SizedBox(
                                height: SizeHelper.getWidth(context, 5),
                              ),
                              SmallDescriptionImage(
                                controller: _controller,
                                imageIndex: 2,
                                ontap: (value) {
                                  _controller.imageForceIndex.value = value;
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            width: SizeHelper.getWidth(context, 25),
                          ),
                          LargeDescriptionImage(controller: _controller),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 15,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: kBlurBackgroundColor.withOpacity(1),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: const [BoxShadow(color: Colors.white, spreadRadius: 1)]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(_controller.product.value?.name ?? '',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeHelper.getWidth(context, 16),
                              fontWeight: FontWeight.w600,
                              color: kPrimaryTextColor,
                            )),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            StarsRatingBar(controller: _controller),
                            Obx(
                              () => Text(
                                (_controller.product.value?.numReviews) != null ? "${_controller.product.value!.numReviews} review" : '',
                                style: GoogleFonts.montserrat(
                                  fontSize: SizeHelper.getWidth(context, 12),
                                  fontWeight: FontWeight.w600,
                                  color: kPrimaryTextColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: const BoxDecoration(
                          color: kBackgroundHighLightColor,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Text("5%",
                            style: GoogleFonts.montserrat(
                              fontSize: SizeHelper.getWidth(context, 10),
                              fontWeight: FontWeight.w600,
                              color: kPrimaryTextColor,
                            )),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('\$400',
                              style: GoogleFonts.montserrat(
                                fontSize: SizeHelper.getWidth(context, 14),
                                fontWeight: FontWeight.w600,
                                color: kPrimaryTextColor,
                              )),
                          const SizedBox(
                            width: 8,
                          ),
                          Text('\$500',
                              style: GoogleFonts.montserrat(
                                decoration: TextDecoration.lineThrough,
                                fontSize: SizeHelper.getWidth(context, 10),
                                fontWeight: FontWeight.w300,
                                color: kPrimaryTextColor,
                              )),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: TextHighLightButton(
                              title: 'ADD TO CART',
                              onPressed: () {},
                              backgroundColor: kBackgroundHighLightColor,
                              textColor: kPrimaryTextColor,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: TextHighLightButton(
                              title: 'SHOP NOW',
                              onPressed: () {},
                              backgroundColor: kPrimaryTextColor,
                              textColor: kBackgroundHighLightColor,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: kPrimaryTextColor,
                        thickness: 1,
                      ),
                      TabProductDetail(
                        controller: _controller,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
