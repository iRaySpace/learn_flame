import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/widgets.dart';
import 'player.dart';


class LearnGame extends Game with TapDetector {
  double _gravity = 9.8;
  double _velocityY = 200.0;
  
  Player _player = Player();

  @override
  void render(Canvas canvas) {
    _player.render(canvas);
  }

  @override
  void update(double t) {
    _player.update(t, _gravity);
  }

  @override
  void onTapDown(TapDownDetails details) {
    _player.jump(_velocityY);
  }
}