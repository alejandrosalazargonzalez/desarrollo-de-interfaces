import 'dart:io';

Future<void> main() async {
  print('Comprobando conexión a Internet...');

  try {
    List<InternetAddress> concexion = await InternetAddress.lookup('google.com');
    print(concexion);
    print("✅ Conectado a Internet");
  } on SocketException catch (_) {
    print('❌ Sin conexión a Internet');
  }
}