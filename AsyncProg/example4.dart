

main(List<String> args) async {

  /*await for(final number in getNumbers()){
    print(number);
  }*/

  await for(final name in getNames()){
    try{
      print(name);
    }catch(e, s){
      print(e);
      print(s);
    }
  }

  try{
    await for(final name in getNames()) {
      print(name);
    }
  }catch(e, s){
    print(e);
    print(s);
  }



  for(final number in numbers()) {
    print(number);
  }

}

List<int> numbers(){
  return List.of([1, 2, 3]);
}

Stream<int> getNumbers() async* {
  for(var i = 0; i < 10; i++){
    await Future.delayed(
      const Duration(seconds: 1),
    );
    yield i;
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(seconds: 2),
  );
  yield 'Joe';
  throw Exception('Something went wrong!');
}