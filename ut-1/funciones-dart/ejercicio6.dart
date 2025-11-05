import 'dart:io';
/**
 * Author: alejandrosalazargonzalez
 * Version: 1.0.0 
 */
void operar(int num1, int num2){
  print("¿que operacion desea hacer?\n 1.suma\n 2.resta\n 3.multiplicacion \n 4.division");
  int seleccion = int.parse(stdin.readLineSync() ?? "0");
  operacion(seleccion, num1, num2);
}

void operacion(int seleccion, int num1, int num2 ){
  switch (seleccion) {
    case 1:
      print("resultado de $num1 + $num2 = ${num1+num2}");
      break;
    case 2:
      print("resultado de $num1 - $num2 = ${num1-num2}");
      break;
    case 3:
      print("resultado de $num1 * $num2 = ${num1*num2}");
      break;
    case 4:
      print("resultado de $num1 / $num2 = ${num1/num2}");
      break;
    default:
    print("no seleccionaste");
  }
}

void main (){
  print("escribe un numero");
  int num1 = int.parse(stdin.readLineSync() ?? "0");
  print("escribe un numero");
  int num2 = int.parse(stdin.readLineSync() ?? "0");
  operar(num1, num2);
}