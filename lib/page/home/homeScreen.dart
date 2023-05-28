import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sypnasis/page/home/homeController.dart';

import '../../core/values/colors.dart';

class HomeScreen extends GetView<HomeController> {
  final controller = Get.put(HomeController());

  Widget buildKlikSoC() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25), // Jarak Tombol Login Dengan Form
      width: double.infinity, // Agar Tombol Login Memenuhi Layar
      child: ElevatedButton(
        onPressed: _klikLogin, // Aksi Ketika Tombol Ditekan
        style: ElevatedButton.styleFrom( // Styling Tombol
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15) // Tombol Agar Tidak Terlalu Tumpul
            ),
            padding: const EdgeInsets.all(15), // Ukuran Tombol
            elevation: 5 // Ketebalan Bayangan
        ),
        child: const Text(
          'Data SoC',
          style: TextStyle(
              color: AppColors.textBtn,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  _klikLogin() {
    controller.klikLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration (
                      gradient: LinearGradient (
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.primaryColor,
                          AppColors.secondaryColor,
                          AppColors.tertiaryColor,
                          AppColors.quaternaryColor,
                        ],
                      )
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 120
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'HomePage',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 20),
                        buildKlikSoC(),
                      ],
                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}