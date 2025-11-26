

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
        child:SizedBox(
          height: 400,
          width: 400,
        child: Card(
          margin: EdgeInsets.all(20),
          color: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              apartadoRow(Icons.person, "perfil de usuario",40),
              separador(16, 8),
              apartadoRow(Icons.star, "  Puntos: 120", 20),
              SizedBox(height: 8,),
              apartadoRow(Icons.notifications, "  Notificaciones: 5", 20),
              separador(10, 16),
              ElevatedButton(onPressed: () {
              }, child: Text("Editar perfil", style: TextStyle(color: Colors.purpleAccent),)),
              separador(24, 8),
              Text("Opciones rapidas"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  apartadoColum(Icons.folder, "Archivos"),
                  SizedBox(width: 24,),
                  apartadoColum(Icons.settings, "Ajustes"),
                  SizedBox(width: 24,),
                  apartadoColum(Icons.help_outline_rounded, "Ayuda")
                ],
              )
            ],
          ),
        )
        ),
      ),
    );
  }
  Widget apartadoRow(IconData icono, String texto, double? size ){
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icono,size: size,),
                  Text(texto)
                ],
              );
  }
  Widget apartadoColum(IconData icono, String texto ){
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icono,),
                  Text(texto)
                ],
              );
  }
  Widget separador(double arriba, double abajo){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
                      SizedBox(height: arriba,),
              Divider(height:2,),
              SizedBox(height: abajo,),
      ],
    );
  }
}

