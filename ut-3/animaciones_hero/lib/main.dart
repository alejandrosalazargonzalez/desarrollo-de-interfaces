import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fotos históricas')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: GestureDetector(
            onTap: () => MaterialPageRoute(builder: (_) => SecondPage()),
            child: Hero(
              tag: "soldado",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/berlin.jpg",
                  width: 300,
                  height: 130,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle de la tarjeta')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Text(""),
      ),
    );
  }
}
