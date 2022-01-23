import 'package:eshopee/app/modules/wellcome/wellcome_controller.dart';
import 'package:get/get.dart';

class WellcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WellcomeController>(() => WellcomeController());
  }
}
