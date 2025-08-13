import 'package:flutter/material.dart';
import 'package:flutter2/pages/Calculator.dart';
import 'package:flutter2/routes/pages.dart';
import 'package:flutter2/routes/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.Calculator,
      getPages: AppPages.pages,
    );
  }
}
