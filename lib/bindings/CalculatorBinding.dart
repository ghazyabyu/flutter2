import 'package:flutter2/controllers/Calculator_Controller.dart';
import 'package:get/get.dart';

class CalculatorBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CalculatorController> (()=>CalculatorController());
  }

}
