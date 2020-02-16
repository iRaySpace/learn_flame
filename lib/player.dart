import 'dart:ui';

class Player {
  double _x;
  double _y;
  double _velocityY;

  final double _width;
  final double _height;
  
  final Paint _paint;

  Player() :
    _x = 0.0,
    _y = 0.0,
    _velocityY = 0.0,
    _width = 100.00,
    _height = 100.00,
    _paint = Paint() {
      _paint.color = Color(0xFFFFFFFF);
    }

  void render(Canvas canvas) {
    Rect rect = Rect.fromLTWH(_x, _y, _width, _height);
    canvas.drawRect(rect, _paint);
  }

  void update(double t, double gravity) {
    _velocityY = _velocityY - gravity;
    _y = _y - _velocityY * t;
  }

  void jump(double velocityY) {
    _velocityY = velocityY;
  }
}
