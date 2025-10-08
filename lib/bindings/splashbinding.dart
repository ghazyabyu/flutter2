import 'package:flutter2/controllers/splashscreen_controller.dart';
import 'package:get/get.dart';

class SplashBinding  extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashscreenController> (()=>SplashscreenController());
  }

}
