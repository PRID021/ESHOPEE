import 'package:get/get.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/screen/login_screen.dart';
import '../modules/splash/screen/splash_screen.dart';
import '../modules/splash/splash_binding.dart';
part './routes.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
  ];
}
