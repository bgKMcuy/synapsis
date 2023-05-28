import 'package:get/get.dart';
import 'package:sypnasis/page/splash/splashController.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<SplashController>(
    //   () => SplashController()
    // );
    Get.put(SplashController());
  }
}