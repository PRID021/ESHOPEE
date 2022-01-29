import 'package:eshopee/app/constant/colors/font_constraints.dart';
import 'package:eshopee/app/modules/product_detail/product_detail_controller.dart';
import 'package:eshopee/app/modules/product_detail/widget/dropdown_menus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DescriptionTab extends StatelessWidget {
  DescriptionTab({Key? key}) : super(key: key);
  final ProductDetailController controller = Get.find<ProductDetailController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Spacer(),
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
            const Spacer(),
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
            const Spacer(),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Spacer(),
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
            const Spacer(),
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
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
