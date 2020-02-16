import 'package:flutter/material.dart';
import 'package:flame/util.dart';
import 'package:learn_flame/learn_game.dart';


void main() async {
  runApp(LearnGame().widget);
  await Util().fullScreen();
}

