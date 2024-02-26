
import 'dart:io';
import 'dart:math';



main(List<String> arguments){
  try{
    int age = askUser();
    if(age < 18) throw new Exception('too young');
    if(age > 100) throw new Exception('too old');
    print('you may continue');
  }on FormatException{
    print('base 2, please!');
  }
  catch(e){
    print('Error: ${e}');
  }finally{
    print('good bey');
  }
}

int askUser() {
  return int.parse(stdin.readLineSync()!, radix: 16);
}

