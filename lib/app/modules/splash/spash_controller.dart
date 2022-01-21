import 'package:eshopee/app/routes/pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();
    Future.delayed(const Duration(seconds: 5), () {
      Get.offAllNamed(Routes.login);
    });
  }
}
