import 'dart:io';

Future<void> main() async {
  final file = File('registro.txt');
  final fecha = DateTime.now();

  // TODO: Escribe la fecha en el archivo (modo append)
  // y muestra un mensaje de confirmación.
  FileMode.append;
  file.writeAsString(fecha.toString());
}