import 'package:get/get.dart';
import 'package:sypnasis/page/auth/login/loginController.dart';
import 'package:sypnasis/routes/appPages.dart';

class HomeController extends GetxController {
  final loginController = Get.put(LoginController());

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  klikLogin() {
    loginController.getStorage.write('status', 'login');
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(Routes.soc);
    });
  }

  @override
  void onClose() {}
}