import 'package:get/get.dart';
import 'package:sypnasis/page/auth/regis/regisController.dart';

class RegisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisController>(
      () => RegisController()
    );
  }
}