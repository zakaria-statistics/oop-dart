import 'my_exception.dart';

main(List<String> args){
  MyException myException = MyException("Ceci mon exception personnalisee");
  //myException.example();
  void calculate([int a = 5, int? b]){
    int r = a * 5;
    print(r);
  }
  calculate(6);
}