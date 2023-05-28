import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sypnasis/core/values/colors.dart';
import 'package:sypnasis/core/values/image.dart';
import 'package:sypnasis/page/splash/splashController.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    //menghilangkan bar atas dan bawah
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
        SystemUiOverlay.bottom,
      ]
    );

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primaryColor,
              AppColors.secondaryColor,
              AppColors.tertiaryColor,
              AppColors.quaternaryColor,
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            ImageAssets.logo,
            height: 250,
            width: 250,
          )
        ),
      ),
    );
  }
}
