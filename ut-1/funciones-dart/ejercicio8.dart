import 'dart:math';
/**
 * Author: alejandrosalazargonzalez
 * Version: 1.0.0 
 */
List<num> cuadrados(List<num> numeros){
  List<num> salida = [];
  numeros.forEach((numeros)=> salida.add(pow(numeros, 2)));
  return salida;
}
void main(){
List<num> numeros =[1,2,3,4];
print(cuadrados(numeros));
}