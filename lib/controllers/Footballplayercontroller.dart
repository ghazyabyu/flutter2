import 'package:get/get.dart';
import 'package:flutter2/model/footbalplayer_model.dart';
import 'package:flutter/material.dart';


class Footballplayercontroller extends GetxController {
  var Players = <FootballPlayerModel>[
    FootballPlayerModel(
      name: "Patrik Schick",
      number: "14",
      position: "Forward",
      image: const AssetImage('assets/images/patrik_schick.jpg'),
    ),
    FootballPlayerModel(
      name: "Victor Boniface",
      number: "22",
      position: "Forward",
      image: const AssetImage('assets/images/victor_binoface.png'),
    ),
    FootballPlayerModel(
      name: "Alex Grimaldo",
      number: "20",
      position: "Defender",
      image: const AssetImage('assets/images/alex_grimaldo.png'),
    ),
    FootballPlayerModel(
      name: "Piero Hincapié",
      number: "3",
      position: "Defender",
      image: const AssetImage('assets/images/piero_hincapie.png'),
    ),
    FootballPlayerModel(
      name: "Ibrahim Maza",
      number: "10",
      position: "Midfielder",
      image: const AssetImage('assets/images/ibrahim_maza.png'),
    ),
  ].obs;
}
