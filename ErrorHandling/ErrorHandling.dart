main(List<String> arguments){
  int age = 20;
  var dogYears = null;
  try {
    print(age / dogYears);
  }
  on TypeError{
    print('this is impossible!');
  }
  catch(e){
    print(e.runtimeType);
  }
  finally{
    print('following process');
  }
}