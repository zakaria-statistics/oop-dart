

import 'dart:collection';
import 'dart:io';


main(List<String> arguments){
  var test = [1,2,3,4];
  print('length = ${test.length}');
  print('first element: ${test[0]}');

  print(test.elementAt(3));
  var things = [];
  things.add(1);
  things.add(true);
  things.add('world');
  print(things.indexOf(true));
  print(things.elementAt(1));

  var integers = <String>[];
  integers.add('5');
  integers.add('56');
  integers.add('gh');

  //sets
  var names = <String>{};
  names.add('value');
  names.add('123');
  Set <String> words = {};
  words.add('jim');
  words.add('halpert');
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  words.addAll(halogens);
  words.forEach((element) {print(element);});

  print('-----------------map----------------');
  var maps = {
    1: 'one',
    2: 'two',
    6: 'six',
    5: '2'
  };
  maps.forEach((key, value) => print(value));
  var getGifts = Map<String, String>();
  getGifts['one'] = 'car';
  getGifts['two'] = 'golden braces';
  getGifts['5'] = '6 as String';
  getGifts.forEach((k, v) => print(v));
  print('---------------------map2--------------');
  var gifts = {'first': 'blabla'};
  print(gifts['fifth']);

  Map test1 = {
    1:2,
    3:6,
    5:6,
    38:9,
    'f':'g'
  };
  test1[0] = 9;
  
  test1.forEach((key, value) {print('${key} : ${value}');});
  print(test1.putIfAbsent(3, () => 66));
  print('---------------------queue--------------');

  Queue<String> queue = new Queue();
  queue.add('mmmm');
  queue.add('am');
  queue.add('me');
  queue.add('fmmmm');
  queue.forEach((e) => print(e));
  queue.removeWhere((element) => element.contains('f'));
  queue.forEach((e) => print(e));
  print(test1.values);
  print('---------------------operators--------------');

  var list = [1,2,5,7];
  var list2 = [0, ...list, 6];
  list2.forEach((element) {print(element);});

  print('---------------------control flow operators--------------');

  var nav = ['Home', 'Furniture', 'Plants', if (false) 'Outlet', 'garden'];
  nav.forEach((element) {print(element);});

  List pair = [1,3];
  if (pair case [int x, int y]) {
    print('Was coordinate array $x,$y');
  } else {
    throw FormatException('Invalid coordinates.');
  }


  final diameters = <double, String>{1.0: 'Earth'};
  final otherDiameters = <double, String>{0.383: 'Mercury', 0.949: 'Venus'};

  for (final item in otherDiameters.entries) {
    diameters.putIfAbsent(item.key, () => item.value);
  }
  print(diameters); // {1.0: Earth, 0.383: Mercury, 0.949: Venus}

// If the key already exists, the current value is returned.
  final result = diameters.putIfAbsent(0.383, () => 'Random');
  print(result); // Mercury
  print(diameters); // {1.0: Earth, 0.383: Mercury, 0.949: Venus}

  print('--------------quiz1------------------');
  List<String> people = ['Brain', 'pam', 'jim', 'michael', 'oscar', 'dwight'];
  stdout.write('enter an index!');
  int index = int.parse(stdin.readLineSync()!);
  print(people.elementAt(index));






}
