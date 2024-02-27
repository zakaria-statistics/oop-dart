void main(List<String> args) async{
  getFullName()
      .then((value) => calculateLength(value))
      .then((value) {
        if(value < 1)
          print("isn't a fullName");
        else
          print("is indeed a fullName");
      });
}


Future<String> getFullName() => Future.delayed(Duration(seconds: 2),
    () =>  'Joe Doe');

Future<int> calculateLength(String value) => Future.delayed(Duration(seconds: 2),
    () => value.length);