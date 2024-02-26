
main(List<String> arguments){
  sayHello('Brain');
  download('file.txt', true);
  int footage = squareFeet(length: 10, width: 15);
  print('footage = ${footage}');
  downloadPort('file.txt',port: 90);
  int dogYears = calYears(age: 60, multiplier: 7);
  print('you age in dog age is ${dogYears}');
  int catYears = calYears(age: 60, multiplier: 12);
  print('you age in cat age is ${catYears}');


  print('++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
  (){print('hello');};
  List<String> people = ['Brain', 'Tim', 'Oscar', 'Michael', 'Pam', 'Jim'];
  people.forEach(print);
  people.forEach((name){print(name + '2');});
  people.where((element) {
    if(element.contains('m')) return true;
    else return false;
  }).map((e) => e.toUpperCase()).forEach(print);

  //people.where((element) => {element.contains('m') ? true : false;}).map((e) => e.toUpperCase()).forEach((element) {print(element);});












}

void sayHello([String name = '']) {
  if(name.isNotEmpty) name = name.padLeft(name.length + 1);
  print('Hello${name}');
}

void download(String file, [bool open = false]){
  print('downloading ${file}');
  if(open) print('opening ${file}');
}

int squareFeet({required int width, required int length}){
  return width * length;
}

void downloadPort(String file, {int port = 80}){
  print('${file} is downloading on port ${port}');
}

int calYears({required int age, required int multiplier}){
  return age * multiplier;
}