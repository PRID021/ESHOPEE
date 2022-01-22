import 'package:eshopee/app/data/services/auth_service.dart';
import 'package:eshopee/app/routes/pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();
    Future.delayed(const Duration(seconds: 5), () {
      _navigateToNextScreen();
    });
  }

  void _navigateToNextScreen() {
    if (AuthenticationService.instance.isLogined) {
      _loadDataAndNavigateToSuitableScreen();
    } else {
      Get.offNamed(Routes.login);
    }
  }

  void _loadDataAndNavigateToSuitableScreen() async {
    // await DataService.instance.loadUserData();
    Get.offNamed(Routes.home);
  }
}
