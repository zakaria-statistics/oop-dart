import 'dart:convert';
import 'dart:io';
import 'point.dart';
import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';

class GeometricDesign{

  List shapes = <Shape>[];

  Shape add(Shape shape){
    shapes.add(shape);
    return shape;
  }
  show(){
    shapes.forEach((s) {
      if(s is Circle) {
        print("+++++++++++++circle++++++++++");
        print("circle rad : ${s.getRadius()}");
      }
      else if(s is Rectangle) {
        print("++++++++++++rect++++++++++++");
        print("width : ${s.getWidth()} & height ${s.getHeight()}");
      }
      JsonEncoder jsonEncoder = JsonEncoder.withIndent("  ");
      print(jsonEncoder.convert(s.toJson()));
      print("area = ${s.getArea()}");
      print("per = ${s.getPerimeter()}");
    });
  }
  String toJson(){
    JsonEncoder jsonEncoder = JsonEncoder.withIndent("  ");
    return jsonEncoder.convert({"shapes": shapes});
  }
  void save(String fileName){
    File file =File(fileName);
    file.writeAsStringSync(toJson());
  }
  GeometricDesign(){}
  GeometricDesign.fromFile(String fileName){
    File file=File(fileName);
    String data=file.readAsStringSync();
    Map<String,dynamic> jsonData = json.decode(data);
    List<Shape> shapeList = (jsonData['shapes'] as List).map((item) {
      if (item["type"] == "circle") {
        double radius = item["radius"];
        Point center = Point.fromJson(item["center"]);
        return Circle(p1: center, p2: Point(x: center.x + radius, y: center.y));
      }else {
        Point p = Point(x: item["x"], y: item["y"]);
        double width = item["width"];
        double height = item["height"];
        return Rectangle(p1: p, p2: Point(x: p.x + width, y: p.y + height));
      };
    }).toList();


    shapes = shapeList;
  }
}