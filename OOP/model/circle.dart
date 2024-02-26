import 'dart:math' as math;
import 'shape.dart';
import 'point.dart';

class Circle extends Shape{

  Circle({required Point p1, required Point p2}) : super(p1: p1, p2: p2);
  double getRadius(){
    return p1.distanceTo(p2);
  }

  @override
  double getArea() {
    double r = getRadius();
    return double.parse((math.pi * r * r).toStringAsFixed(2));
  }

  @override
  double getPerimeter() {
    double r = getRadius();
    return double.parse((2 * math.pi * r).toStringAsFixed(2));
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": "circle",
      "center": p1,
      "radius": getRadius()
    };
  }

}