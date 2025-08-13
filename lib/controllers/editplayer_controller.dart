import 'package:get/get.dart';
import 'package:flutter2/model/footbalplayer_model.dart';
import 'package:flutter2/controllers/Footballplayercontroller.dart';

class EditPlayerController extends GetxController {

  final footballPlayerController = Get.find<Footballplayercontroller>();

  void updatePlayer(int index, FootballPlayerModel updatedPlayer) {
    footballPlayerController.Players[index] = updatedPlayer;
    footballPlayerController.Players.refresh(); 
  }
}
