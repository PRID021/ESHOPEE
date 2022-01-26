import 'package:eshopee/app/modules/product_detail/product_detail_controller.dart';
import 'package:get/get.dart';

class ProductDetailtBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailController>(() => ProductDetailController());
  }
}
