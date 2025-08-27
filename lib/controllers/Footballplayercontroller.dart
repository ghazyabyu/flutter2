import 'package:get/get.dart';
import 'package:flutter2/model/footbalplayer_model.dart';
import 'package:flutter/material.dart';

class Footballplayercontroller extends GetxController {
  var Players = <FootballPlayerModel>[
    FootballPlayerModel(
      name: "Patrik Schick",
      number: "14",
      position: "Forward",
      image: "assets/images/patrik_schick.jpg",
    ),
    FootballPlayerModel(
      name: "Victor Boniface",
      number: "22",
      position: "Forward",
      image: "assets/images/victor_boniface.jpg",
    ),
    FootballPlayerModel(
      name: "Alex Grimaldo",
      number: "20",
      position: "Defender",
      image: "assets/images/alex_grimaldo.jpg",
    ),
    FootballPlayerModel(
      name: "Piero Hincapié",
      number: "3",
      position: "Defender",
      image: "assets/images/piero_hincapie.jpg",
    ),
    FootballPlayerModel(
      name: "Ibrahim Maza",
      number: "10",
      position: "Midfielder",
      image: "assets/images/ibrahim_maza.jpg",
    ),
  ].obs;

 void updatePlayer(int index, FootballPlayerModel newPlayer) {
  Players[index] = newPlayer;
  }
}
