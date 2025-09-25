/**
 * Author: alejandrosalazargonzalez
 * Version: 1.0.0
 */
Function crearMultiplicador(num factor) {
  return (num numero) => numero * factor;
}

void main() {
  var multiplicarPorTres = crearMultiplicador(3);
  print(multiplicarPorTres(10));

  var multiplicarPorCinco = crearMultiplicador(5);
  print(multiplicarPorCinco(10));
}