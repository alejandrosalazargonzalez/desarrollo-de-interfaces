/**
 * Author: alejandrosalazargonzalez
 * Version: 1.0.0 
 */
int mayor(List<int>numeros){
  int mayor = numeros[1];
  for (var i = 1; i < numeros.length; i++) {
    if (numeros[i] > mayor) {
      mayor = numeros[i];
    }
  }
  return mayor;
}

void main(){
  List<int> lista = [1,2,3];
  print("1,2,3");
  print(mayor(lista));
}