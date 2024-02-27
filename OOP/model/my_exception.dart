class MyException implements Exception{
  String message;
  MyException(this.message);

  @override
  String toString() {
    return 'MyException{message: $message}';
  }
  void example(){
    try{
      throw MyException(this.message);
    }catch(e, stackTrace){
      print(e);
      print(stackTrace);
    }
  }
}