
import 'package:flutter2/bindings/CalculatorBinding.dart';
import 'package:flutter2/bindings/Nav_binding.dart';
import 'package:flutter2/bindings/examplebinding.dart';
import 'package:flutter2/bindings/login_binding.dart';
import 'package:flutter2/bindings/splashbinding.dart';
import 'package:flutter2/bindings/ContactBinding.dart';
import 'package:flutter2/pages/Calculator.dart';
import 'package:flutter2/pages/Football_player.dart';
import 'package:flutter2/pages/editplayer_page.dart';
import 'package:flutter2/pages/examplepage.dart';
import 'package:flutter2/pages/login_page.dart';
import 'package:flutter2/pages/contact_page.dart';
import 'package:flutter2/pages/navpage.dart';
import 'package:flutter2/pages/splashscreen_page.dart';
import 'package:flutter2/routes/routes.dart';
import 'package:get/route_manager.dart';
import 'package:flutter/widgets.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.Calculator, page: () => Calculator(), binding: CalculatorBinding()),
    GetPage(name: AppRoutes.Football, page: () => FootballPlayer()),
    GetPage(name: AppRoutes.editplayer, page: () => EditPlayerPage()),
    GetPage(name: AppRoutes.NavPage, page: () => NavPage(), binding: NavBinding()),
    GetPage(name: AppRoutes.splashpage, page: () => SplashscreenPage(),binding: SplashBinding()),
    GetPage(name: AppRoutes.loginpage, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.contactpage, page: () => ContactPage(), binding: ContactBinding()),
    GetPage(name: AppRoutes.examplepage, page: () => ExamplePage(), binding: ExampleBinding()),
  ];
}
