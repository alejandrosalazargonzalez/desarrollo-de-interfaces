/**
 * @author alejandrosalazargonzalez
 * @version 1.0.0
 */
void dividir(int a, int b) {
  print(a / b);
}

void main() {
  try {
    dividir(10, 0);
  } catch(e){
    print("no se puede dividir entre 0"+e.toString());
  var lista = [1, 2, 3];

  try {
    print(lista[5]);
  } on RangeError{
    print("fuera de rango");
  }
  }
}