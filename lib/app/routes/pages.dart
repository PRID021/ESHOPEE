import 'package:get/get.dart';
import '../modules/splash/screen/splash_screen.dart';
import '../modules/splash/splash_binding.dart';
part './routes.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
  ];
}
