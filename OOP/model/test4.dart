import 'circle.dart';
import 'geometric_design.dart';
import 'point.dart';
import 'rectangle.dart';


void main(){
  GeometricDesign geometricDesign = GeometricDesign();
  geometricDesign.shapes.add(Circle(p1: Point(x: 12.25, y: 4.36), p2: Point(x: 3.65, y: 5.87)));
  geometricDesign.shapes.add(Rectangle(p1: Point(x: 12.123458, y: 4.32789), p2: Point(x: 3.2558, y: 5.14354)));
  geometricDesign.shapes.add(Circle(p1: Point(x: 2, y: 14), p2: Point(x: 13, y: 15)));
  geometricDesign.show();
  print("-----------------------");
  print(geometricDesign.toJson());
  geometricDesign.save("Design.json");
}