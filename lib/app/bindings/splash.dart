import 'package:get/get.dart';
import 'package:thera/app/pages/Splash/controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
