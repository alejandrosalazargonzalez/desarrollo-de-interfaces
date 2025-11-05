import 'dart:io';

void main() async {
  final file = File('datos.txt');

  try {
    String salida = await file.readAsString();
    print(salida);
  } catch (e) {
    print('Error al leer el archivo: $e');
  }
}