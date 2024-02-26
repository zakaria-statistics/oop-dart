import 'dart:math';

class Point {
  final double x;
  final double y;
  //immutable object with const modifier!
  const Point({required this.x,required this.y});

  Point.fromArray(List<double> data) :
        x=data[0], y=data[1];

  Point.fromJson(Map<String, dynamic> data) :
        x = data['x'].toDouble() , y = data['y'].toDouble();

  double distanceTo(Point p){
    double abscissa = x-p.x;
    double ordinate = y-p.y;
    return double.parse((sqrt(abscissa * abscissa + ordinate * ordinate)).toStringAsFixed(2));
  }

  Map<String, dynamic> toJson(){
    return {'x':x,'y':y};
  }

  @override
  String toString() {
    return 'Point{x: $x, y: $y}';
  }

}