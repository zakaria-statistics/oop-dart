void main(List<String> args) async {
  await for(final character in getName().asyncExpand(
          (name) => getCharacters(name),
  )){
    print(character);
  }
}

Stream<String> getCharacters(String fromString) async*{
  for(var i = 0; i < fromString.length; i++){
    await Future.delayed(Duration(seconds: 2));
    yield fromString[i];
  }
}


Stream<String> getName() async* {
  await Future.delayed(Duration(milliseconds: 200));
  yield 'Hello';
  await Future.delayed(Duration(milliseconds: 200));
  yield '  ';
  await Future.delayed(Duration(milliseconds: 200));
  yield 'World';
}