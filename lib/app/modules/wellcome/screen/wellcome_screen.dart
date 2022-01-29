import 'package:eshopee/app/constant/colors/color_constraints.dart';
import 'package:eshopee/app/core/utils/size_helper.dart';
import 'package:eshopee/app/modules/wellcome/widget/high_ligh_button.dart';
import 'package:eshopee/app/modules/wellcome/widget/splash_content.dart';
import 'package:eshopee/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({Key? key}) : super(key: key);

  @override
  _WellcomeScreenState createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  int cuurentPageIndex = 0;
  final List<SplashContent> pages = [
    SplashContent(
      image: Assets.images.wellcome1,
      title: 'Order From Desk',
      subTitle: 'Now you can order  product right now from your desk',
    ),
    SplashContent(
      image: Assets.images.wellcome2,
      title: 'Pay Online',
      subTitle: 'Don’t worries about the change, pay the exact amount while placing order.',
    ),
    SplashContent(
      image: Assets.images.wellcome3,
      title: 'Free Delivery ',
      subTitle: 'Free shipping fee for every order under 10km radio around PRShop stores',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: kBackgroundColor,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    cuurentPageIndex = index;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return pages[index];
                }),
          ),
          // SizedBox(
          //   height: SizeHelper.getHeight(context, 16),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              pages.length,
              (index) => _buildDot(index: index),
            ),
          ),
          SizedBox(
            height: SizeHelper.getHeight(context, 64),
          ),
          SizedBox(
            height: SizeHelper.getHeight(context, 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: cuurentPageIndex != 2,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'SKIP',
                      style: TextStyle(color: kPrimaryTextColor),
                    ),
                  ),
                ),
                Visibility(
                    visible: cuurentPageIndex == 2,
                    child: HighLightButton(
                      title: 'Let\'s Start',
                      onPressed: () {},
                    )),
                Visibility(
                  visible: cuurentPageIndex != 2,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'NEXT',
                      style: TextStyle(color: kPrimaryTextColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeHelper.getHeight(context, 24),
          ),
        ],
      ),
    );
  }

  Container _buildDot({required int index}) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 5,
      width: cuurentPageIndex == index ? SizeHelper.getHeight(context, 20) : SizeHelper.getHeight(context, 10),
      decoration: BoxDecoration(
        color: cuurentPageIndex != index ? kPrimaryTextColor : kBackgroundHighLightColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
