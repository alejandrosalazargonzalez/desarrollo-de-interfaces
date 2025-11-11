import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Flutter',
      home: MiWidgetConEstado(),
    );
  }
}

// 🔹 Widget con estado
class MiWidgetConEstado extends StatefulWidget {
  const MiWidgetConEstado({super.key});

  @override
  _MiWidgetConEstadoState createState() => _MiWidgetConEstadoState();
  // También válido: State<MiWidgetConEstado> createState() => _MiWidgetConEstadoState();
}

// 🔹 Clase de estado asociada al widget
class _MiWidgetConEstadoState extends State<MiWidgetConEstado> {
  var controlador = TextEditingController();
  String texto = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo StatefulWidget')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(
            children: [
              TextField(controller: controlador),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    texto = controlador.text;
                  });
                },
                child:  Text("Mostrar texto"),
              ),
              SizedBox(height: 100),
              Text(texto, style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
