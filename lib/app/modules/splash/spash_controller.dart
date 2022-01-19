import 'package:eshopee/app/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/services/app_start_service.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();

    WidgetsFlutterBinding.ensureInitialized();
    await AppStartService.instance.initGetStorage();
    await AppStartService.instance.initFirebase();
    Future.delayed(const Duration(seconds: 10), () {
      Get.offAllNamed(Routes.login);
    });
  }
}
