
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Alaska"),
              SizedBox(height: 10,),
              Text("El Sol se ha ido oficialmente en Alaska, y no volverá a salir hasta el 22 de enero de 2026"),
              SizedBox(height: 10,),
              Image.asset('images/alaska.jpg', width: 350,),
              SizedBox(height: 5,),
              Image.network("https://s1.ppllstatics.com/lasprovincias/www/multimedia/201811/26/media/cortadas/alaska-U30168758986hpE--624x337@Las%20Provincias-LasProvincias.jpg",width:350 ,)
            ],
          ),
        ),
    );
  }
}
