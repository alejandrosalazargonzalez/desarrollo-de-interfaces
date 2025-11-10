import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
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
      body: Container(
        color: Colors.black,
        child: Center(child: MyTextField()),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  Widget myTextField(String texto) {
    return Container(
      margin: EdgeInsets.fromLTRB(450, 20, 450, 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(decoration: InputDecoration(label: Row(
        spacing: 20,
        children: [
          Icon(Icons.lock,color: Colors.grey,),
          Text(texto, style: TextStyle(color: Colors.white),),
        ],
      ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [myTextField("Email or username"),
        myTextField("Password")
      ],
    );
  }
}
