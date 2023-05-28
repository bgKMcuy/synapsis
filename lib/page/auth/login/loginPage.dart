import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sypnasis/core/values/colors.dart';
import 'package:sypnasis/core/values/image.dart';
import 'package:sypnasis/page/auth/login/loginController.dart';

class LoginPage extends GetView<LoginController> {
  bool _isHidden = true;
  bool isRememberMe = false;
  final controller = Get.put(LoginController());

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration (
              color: const Color(0xffEDEDED),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                    Icons.email,
                    color: AppColors.textBtn
                ),
                hintText: 'Enter your Email',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration (
              color: AppColors.textForm,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]
          ),
          height: 60,
          child: TextFormField(
            obscureText: _isHidden,
            style: const TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: const Icon(
                    Icons.lock,
                    color: AppColors.textBtn
                ),
                suffixIcon: IconButton(
                  padding: const EdgeInsetsDirectional.only(end: 12.0),
                  icon: _isHidden ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                  color: AppColors.textBtn,
                  onPressed: () {
                    // setState(() {
                    //   _isHidden = !_isHidden;
                    // });
                  }, // Tampilkan Password
                ),
                hintText: 'Password',
                hintStyle: const TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildLoginBtn() {
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
          'LOGIN',
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

  Widget buildRegisBtn() {
    return GestureDetector(
      onTap: () => print('Tombol Registrasi Ditekan'),
      child: RichText(
        text: const TextSpan(
            children: [
              TextSpan(
                  text: 'Belum Punya Akun? ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  )
              ),
              TextSpan(
                  text: 'Registrasi',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  )
              )
            ]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [
          SystemUiOverlay.top,
        ]
    );
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
                        //input logo
                        Image.asset(
                          ImageAssets.logo,
                          height: 250,
                          width: 250,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 20),
                        buildEmail(),
                        const SizedBox(height: 10),
                        buildPassword(),
                        buildLoginBtn(),
                        buildRegisBtn()
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
