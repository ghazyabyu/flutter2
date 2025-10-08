import 'package:flutter/material.dart';
import 'package:flutter2/controllers/Footballplayercontroller.dart';
import 'package:get/get.dart';
import 'package:flutter2/controllers/ExampleController.dart';
import 'package:flutter2/controllers/Footballplayercontroller.dart';
import 'package:flutter2/pages/football/football_mobile.dart';
import 'package:flutter2/pages/football/football_widescreen.dart';

class FootballPlayer extends StatelessWidget {
  FootballPlayer({super.key});

  final controller = Get.put(Footballplayercontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          controller.updateLayout(constraints);
          return Obx(
            () => controller.isMobile.value
                ? FootballMobile()
                : FootballWidescreen(),
          );
        },
      ),
    );
  }
}
