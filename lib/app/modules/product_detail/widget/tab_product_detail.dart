import 'package:eshopee/app/constant/colors/font_constraints.dart';
import 'package:eshopee/app/modules/product_detail/product_detail_controller.dart';
import 'package:eshopee/app/modules/product_detail/widget/dropdown_menus.dart';
import 'package:eshopee/app/modules/product_detail/widget/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabProductDetail extends StatefulWidget {
  final ProductDetailController controller;
  const TabProductDetail({Key? key, required this.controller}) : super(key: key);

  @override
  _TabProductDetailState createState() => _TabProductDetailState();
}

class _TabProductDetailState extends State<TabProductDetail> {
  late PageController _pageController;
  int _slectedPage = 0;
  void _changePage(int index) {
    setState(() {
      _slectedPage = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabButton(
                  selectedPage: _slectedPage,
                  title: 'Description',
                  pageIndex: 0,
                  flex: 3,
                  onTap: (pageIndex) {
                    _changePage(pageIndex);
                  },
                ),
                TabButton(
                  title: 'Additional Infomation',
                  flex: 5,
                  onTap: (pageIndex) {
                    _changePage(pageIndex);
                  },
                  pageIndex: 1,
                  selectedPage: _slectedPage,
                ),
                TabButton(
                  title: 'Review',
                  flex: 3,
                  onTap: (pageIndex) {
                    _changePage(pageIndex);
                  },
                  pageIndex: 2,
                  selectedPage: _slectedPage,
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _slectedPage = index;
                });
              },
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    DescriptionTab(),
                  ],
                ),
                const Center(
                  child: Text('Additional Infomation'),
                ),
                const Center(
                  child: Text('Review'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionTab extends StatelessWidget {
  DescriptionTab({Key? key}) : super(key: key);
  final ProductDetailController controller = Get.find<ProductDetailController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              SizedBox(
                width: 137,
                height: 50,
                child: DropDownMenu(
                  label: 'Colors',
                  onChanged: (value) {},
                  selectedValue: controller.colorDropdownSelectedValue,
                  values: controller.colorDropdownvalues,
                ),
              ),
              Spacer(),
              SizedBox(
                width: 137,
                height: 50,
                child: DropDownMenu(
                  label: 'Ram',
                  onChanged: (value) {},
                  selectedValue: controller.ramDropdownSelectedValue,
                  values: controller.ramDropdownvalues,
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Spacer(),
              SizedBox(
                width: 137,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        'SKU: ${controller.product.value?.sku ?? ''}',
                        style: kTextStyle2B,
                      ),
                    ),
                    Obx(
                      () => Text(
                        'Category: ${controller.product.value?.categoryNumber ?? ''}',
                        style: kTextStyle2B,
                      ),
                    ),
                    Obx(
                      () => Text(
                        'Tags: ${controller.product.value?.tags ?? ''}',
                        style: kTextStyle3B,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                width: 137,
                height: 50,
                child: DropDownMenu(
                  label: 'Storage',
                  onChanged: (value) {},
                  selectedValue: controller.storageDropdownSelectedValue,
                  values: controller.storageDropdownvalues,
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
