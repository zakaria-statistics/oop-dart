import 'point.dart';
import 'shape.dart';
class Rectangle extends Shape{

  Rectangle({required Point p1, required Point p2}) : super(p1: p1, p2: p2);

  double getWidth(){
    return double.parse(((p2.x-p1.x).abs()).toStringAsFixed(2));
  }
  double getHeight(){
    return double.parse(((p2.y-p1.y).abs()).toStringAsFixed(2));
  }
  @override
  double getArea() {
    return double.parse((getWidth()*getHeight()).toStringAsFixed(2));
  }

  @override
  double getPerimeter() {
    return double.parse((2*(getHeight()+getWidth())).toStringAsFixed(2));
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "type":"rectangle",
      "x": p1.x,
      "y": p1.y,
      "width": getWidth(),
      "height": getHeight()
    };
  }

}