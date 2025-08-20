import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Calculator.dart';
import 'Football_player.dart';
import 'Profile_page.dart';
import 'package:flutter2/controllers/navcontroller.dart';

class NavPage extends StatelessWidget {
  NavPage({super.key});

  final NavController navController = Get.put(NavController());

  final List<Widget> _pages = [Calculator(), FootballPlayer(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: _pages[navController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navController.selectedIndex.value,
          onTap: navController.changePage,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Calculator",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: "Football",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
