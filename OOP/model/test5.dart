import 'geometric_design.dart';

main(List<String> args){
  GeometricDesign geometricDesign = GeometricDesign.fromFile("Design.json");
  geometricDesign.show();
}