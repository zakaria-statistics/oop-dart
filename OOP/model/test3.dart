import 'dart:convert';

import 'point.dart';
import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';

main(List<String> args) {
  Shape circle = new Circle(
    p1: const Point(
      x: 12,
      y: 13,
    ),
    p2: const Point(
      x: 11,
      y: 10,
    ),
  );
  print("Perimeter = " + circle.getPerimeter().toStringAsFixed(2));
  print("Area = " + circle.getArea().toStringAsFixed(2));
  JsonEncoder jsonEncoder = JsonEncoder.withIndent("  ");
  print(jsonEncoder.convert(circle.toJson()));
  print((circle as Circle).getRadius().toStringAsFixed(2));
  if (circle is Circle) print(circle.getRadius().toStringAsFixed(2));
  print("+++++++++++++++rectangle+++++++++++++++++++++");

  Shape rectangle = Rectangle(
    p1: Point(x: 5, y: 6),
    p2: Point(x: 7, y: 2),
  );

  if(rectangle is Rectangle) {
    print("rect width = ${rectangle.getWidth()}");
    print("rect length = ${rectangle.getHeight()}");
  }

  print("rect area = ${rectangle.getArea()}");
print("rect per = ${rectangle.getPerimeter()}");
  print(jsonEncoder.convert(rectangle.toJson()));
}
