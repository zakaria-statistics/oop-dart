import 'dart:io';

main(List<String> arguments){

  int number = askUser();
  displayResult(number);
}

int askUser() {
  int? number;
  while (number == null) {
    stdout.write('Enter a number: ');
    String? input = stdin.readLineSync();
    try {
      number = int.parse(input!);
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }
  return number;
}

void displayResult(int number){
  for(int i = 1; i <= number; i++){
    print(i);
    if(i == (number / 2).round())
      print('half way there');
  }
}

