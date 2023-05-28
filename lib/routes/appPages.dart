import 'package:get/get.dart';
import 'package:sypnasis/page/SoC/socBinding.dart';
import 'package:sypnasis/page/SoC/socScreen.dart';
import 'package:sypnasis/page/auth/login/loginBinding.dart';
import 'package:sypnasis/page/auth/login/loginPage.dart';
import 'package:sypnasis/page/auth/regis/regisBinding.dart';
import 'package:sypnasis/page/auth/regis/regisPage.dart';
import 'package:sypnasis/page/home/homeBinding.dart';
import 'package:sypnasis/page/home/homeScreen.dart';
import 'package:sypnasis/page/splash/splashBinding.dart';
import 'package:sypnasis/page/splash/splashScreen.dart';

part 'appRoutes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.regis,
      page: () => RegisPage(),
      binding: RegisBinding(),
    ),
    GetPage(
      name: _Paths.soc,
      page: () => SocScreen(),
      binding: SocBinding(),
    )
  ];
}