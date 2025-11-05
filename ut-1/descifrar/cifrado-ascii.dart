String pasarAFrase(String codigo){
  List<String> codigoArray = codigo.split(' ');
  List<int> codigoArrayInt = codigoArray.map((n) => int.parse(n)-1).toList();
  return String.fromCharCodes(codigoArrayInt);
}
void main(){
  String codigo = "82 118 102 33 109 98 33 103 118 102 115 123 98 33 117 102 33 98 100 112 110 113 98 242 102";
print(pasarAFrase(codigo));
}