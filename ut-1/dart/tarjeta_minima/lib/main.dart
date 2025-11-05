import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TarjetaMinimaScreen(),
    );
  }
}

class TarjetaMinimaScreen extends StatelessWidget {
  const TarjetaMinimaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Implementa Scaffold, AppBar, body con Center > Column, Icon, Text, Button y SnackBar
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("mi aplicacion"),),
      body: Center(
        child: Text('Hola Mundo'),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}),
      )
    );
  }
}