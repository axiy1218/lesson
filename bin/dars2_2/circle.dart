import 'dart:math';

class Circle {
  static const pi = 3.14;
  static const maxRadius = 5;
  static void calculateArea() {
    print('Area:::${pi * pow(maxRadius, 2)}');
  }

  void getInfo() {
    calculateArea();
    print(maxRadius);
  }
}
