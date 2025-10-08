import 'package:flutter2/routes/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenController extends GetxController {
  @override
  void onInit() {

    super.onInit();
    checklogin();
  }

  checklogin() async {
    final prefs = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 3));
    if (prefs.getString("username") != null) {
     Get.offAllNamed(AppRoutes.NavPage);
    } else {
      Get.offAllNamed(AppRoutes.loginpage);
      
    }
  }
}