import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter2/controllers/ExampleController.dart';
import 'package:flutter2/pages/example/example_mobile.dart';
import 'package:flutter2/pages/example/example_widescreen.dart';

class ExamplePage extends StatelessWidget {
   ExamplePage({super.key});

  final controller = Get.find<ExampleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          controller.updateLayout(constraints);
         return Obx(()=> controller.isMobile.value ? ExampleMobile() : ExampleWidescreen());
        },
      ),
    );
  }
}