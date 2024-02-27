void main(){
  exampleAsynchrone();
  print("next");
}

Future<String> obtenirDonnees(){
  return Future.delayed(Duration(seconds: 5), () => (10~/0).toStringAsFixed(2));
}

Future<void> exampleAsynchrone() async {
  try{
    var result = await obtenirDonnees();
    print(result);
  }catch(e){
    print("An error happened: $e");
  }
}