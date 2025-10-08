import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/controllers/splashscreen_controller.dart';
import 'package:get/get.dart';

class SplashscreenPage extends StatelessWidget {
   SplashscreenPage({super.key});

    final splashscreenController = Get.find<SplashscreenController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        child: Text("Splash Screen"),
      ),),
    );
  }
}