import 'package:get/get.dart';
import 'package:sypnasis/page/home/homeController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController()
    );
  }
}