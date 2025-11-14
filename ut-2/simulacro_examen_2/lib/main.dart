import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Flutter',
      home: MyMainWidget(),
    );
  }
}

// 🔹 Clase principal
class MyMainWidget extends StatelessWidget {
  const MyMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget principal')),
      body: Center(
        child: Text(
          'Aquí irá tu código',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class WidgetPersonalizado extends StatelessWidget {
  const WidgetPersonalizado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          color: Colors.grey[200],
          child:Row(
          children: Column(
            children: [
              ElevatedButton(onPressed: () {

              }, child: Icon(Icons.work)  
              )
            ],
          ),
          ) 
        ),
      ),
    );
  }
  
}
