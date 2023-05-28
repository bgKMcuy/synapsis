import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sypnasis/page/splash/splashBinding.dart';
import 'package:sypnasis/routes/appPages.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: 'Sypnapsis',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: SplashBinding(),
      debugShowCheckedModeBanner: false,
    )
  );
}

