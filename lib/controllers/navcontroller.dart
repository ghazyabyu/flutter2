import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/pages/Calculator.dart';
import 'package:flutter2/pages/Football_player.dart';
import 'package:flutter2/pages/Profile_page.dart';

class NavController extends GetxController {
  var selectedIndex = 0.obs; 

  
  final List<Widget> pages = [
    Calculator(),
    FootballPlayer(),
    ProfilePage()];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}