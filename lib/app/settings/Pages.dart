import 'package:get/get.dart';
import 'package:thera/app/bindings/splash.dart';
import 'package:thera/app/pages/Home/home_page.dart';
import 'package:thera/app/pages/Splash/splash_page.dart';
import 'package:thera/app/settings/Routes.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
  ];
}
