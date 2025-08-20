import 'package:flutter/widgets.dart';
import 'package:flutter2/pages/Calculator.dart';
import 'package:flutter2/pages/Football_player.dart';
import 'package:flutter2/pages/editplayer_page.dart';
import 'package:flutter2/pages/navpage.dart';
import 'package:flutter2/routes/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.Calculator, page: () => Calculator()),
    GetPage(name: AppRoutes.Football, page: () => FootballPlayer()),
    GetPage(name: AppRoutes.editplayer, page:()=>  EditPlayerPage (index: 0)),
    GetPage(name: AppRoutes.NavPage, page:()=>  NavPage ())
  ];
}
