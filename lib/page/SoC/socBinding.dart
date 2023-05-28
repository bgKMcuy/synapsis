import 'package:get/get.dart';
import 'package:sypnasis/page/SoC/socController.dart';

class SocBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SocController>(
      () => SocController()
    );
  }
}