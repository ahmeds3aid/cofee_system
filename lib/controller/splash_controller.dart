import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 4), () {
      // Navigate to the main app screen
      Get.offAllNamed('/home');
    });
  }
}