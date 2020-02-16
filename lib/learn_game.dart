import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/widgets.dart';


class LearnGame extends Game with TapDetector {
  @override
  void render(Canvas canvas) {
    Rect rect = Rect.fromLTWH(0, 0, 100.00, 100.00);
    Paint paint = Paint();
    paint.color = Color(0xFFFFFFFF);
    canvas.drawRect(rect, paint);
  }

  @override
  void update(double t) {}

  @override
  void onTapDown(TapDownDetails details) {
    print('tapping');
  }
}