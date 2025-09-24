int sumar(List<int>numeros){
  int suma =0;
  for (var i = 1; i < numeros.length; i++) {
      suma += numeros[i];
  }
  return suma;
}

void main(){
  List<int> lista = [1,2,3,4,5,6,7,7,8,89,90];
  print(lista);
  print(sumar(lista));
}