import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter2/controllers/Footballplayercontroller.dart';
import 'package:flutter2/model/footbalplayer_model.dart';

class EditPlayerController extends GetxController {
  final name = TextEditingController();
  final number = TextEditingController();
  final position = TextEditingController();

  late int index;
  final playerController = Get.find<Footballplayercontroller>();

  @override
  void onInit() {
    super.onInit();
    index = Get.arguments as int;

    final player = playerController.Players[index];
    name.text = player.name;
    number.text = player.number;
    position.text = player.position;
  }

  void save() {
    playerController.updatePlayer(
      index,
      FootballPlayerModel(
        name: name.text,
        number: number.text,
        position: position.text,
        image: playerController.Players[index].image,
      ),
    );
    Get.back();
  }

  @override
  void onClose() {
    name.dispose();
    number.dispose();
    position.dispose();
    super.onClose();
  }
}
