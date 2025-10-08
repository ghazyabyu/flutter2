import 'package:get/get.dart';
import 'package:flutter2/controllers/ExampleController.dart';

class ExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleController>(() => ExampleController());
  }
}