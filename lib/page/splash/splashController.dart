import 'package:get/get.dart';
import 'package:sypnasis/page/auth/login/loginController.dart';
import 'package:sypnasis/routes/appPages.dart';

class SplashController extends GetxController {
  final loginController = Get.put(LoginController());

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    if (loginController.getStorage.read('status') == 'login') {
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAllNamed(Routes.home);
      });
    } else if (loginController.getStorage.read('status') == 'regis') {
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAllNamed(Routes.regis);
      });
    } else {
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAllNamed(Routes.login);
      });
    }
  }

  @override
  void onClose() {}
}