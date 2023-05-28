//create loginBinding class
import 'package:get/get.dart';
import 'package:sypnasis/page/auth/login/loginController.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController()
    );
  }
}