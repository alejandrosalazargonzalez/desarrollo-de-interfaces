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
        child: Stack(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("asset/image/profile.jpg"),
            ),
            Container(
              color: Colors.black,
              child: Text("label", style: TextStyle(color: Colors.white),),
            )
          ],
        )
      ),
    );
  }
}