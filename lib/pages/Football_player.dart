import 'package:flutter/material.dart';
import 'package:flutter2/controllers/Footballplayercontroller.dart';
import 'package:flutter2/routes/routes.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FootballPlayer extends StatelessWidget {
  FootballPlayer({super.key});

  final Footballplayercontroller footballplayercontroller = Get.put(
    Footballplayercontroller(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bayer Leverkusen Players")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballplayercontroller.Players.length,
            itemBuilder: (context, index) {
              final player = footballplayercontroller.Players[index];
              return ListTile(
                onTap: () {
                  print(
                    " Player Clicked : " + footballplayercontroller.Players[index].name,
                  );
                  Get.toNamed(AppRoutes.editplayer, arguments: index);
                },
                leading: Image.asset(player.image, width: 50, height: 50),

                title: Text(footballplayercontroller.Players[index].name),
                subtitle: Text(
                  "${footballplayercontroller.Players[index].number} | ${footballplayercontroller.Players[index].position}",
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
