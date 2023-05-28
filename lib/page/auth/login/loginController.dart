import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sypnasis/routes/appPages.dart';

class LoginController extends GetxController {
  final getStorage = GetStorage();
  
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  klikLogin() {
    getStorage.write('status', 'login');
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(Routes.home);
    });
  }

  @override
  void onClose() {}
}

