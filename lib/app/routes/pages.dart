import 'package:eshopee/app/modules/home/home_binding.dart';
import 'package:eshopee/app/modules/home/screen/home_screen.dart';
import 'package:eshopee/app/modules/wellcome/screen/wellcome_screen.dart';
import 'package:eshopee/app/modules/wellcome/welllcome_binding.dart';
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
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.wellCome,
      page: () => const WellcomeScreen(),
      binding: WellcomeBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
