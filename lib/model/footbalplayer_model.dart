import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

class FootballPlayerModel {
  String name;
  String number;
  String position;
  ImageProvider image;

  FootballPlayerModel({
    required this.name,
    required this.number,
    required this.position,
    required this.image,
  });
}
