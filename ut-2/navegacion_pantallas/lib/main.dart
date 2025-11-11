import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Flutter',
      home: PantallaA(),
    );
  }
}

class PantallaA extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  String mensaje = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pantalla A")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                mensaje = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PantallaB()),
                );
              },
              child: Text(mensaje),
            ),
          ],
        ),
      ),
    );
  }
}

class PantallaB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pantalla B")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaA()),
                );
              },
              child: Text("ir a pantalla A"),
            ),
          ],
        ),
      ),
    );
  }
}
