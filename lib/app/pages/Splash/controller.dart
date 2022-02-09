import 'package:get/get.dart';
import 'package:thera/app/settings/Routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Get.offAndToNamed(Routes.HOME);
    super.onReady();
  }
}
