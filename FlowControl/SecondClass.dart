

import 'dart:math';

void main(List<String> arguments){
  int age1 = 11;
  print(age1);
  assert(age1 == 11);
  print(age1);

  {
  int a = 5;
  {
    int b = 6;
    print(a);
  }
  //print(b);
  }
  if(1 == 2) {
    print(age1);
  }
  Random random;
  int age = 100;
  do {
    random = new Random();
    int age = random.nextInt(100);
    switch (age) {
      case 18:
        print('you are 18, you can vote');
        break;
      case 21:
        print('you are an adult now, you can drive');
        break;
      case 45:
        print('you are eligible to run election');
        break;
      case 63:
        print('you can retire now');
        break;
      default:
        print(age);
        break;
    }
  }while(age  < 75);
}