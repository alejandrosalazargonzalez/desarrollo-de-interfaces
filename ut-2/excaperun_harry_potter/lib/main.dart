import 'package:flutter/material.dart';

void main() {
  runApp(const EscapeRoomApp());
}

class EscapeRoomApp extends StatelessWidget {
  const EscapeRoomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Escape Room',
      initialRoute: '/',
      routes: {
        '/': (_) => const SalaInicial(),
        '/Victoria' : (_) => const Victoria(),
        '/Atrapado' : (_) =>const Atrapado(),
        '/Pista1' : (_) =>const Pista1(),
      },
    );
  }
}

// Aquí debes crear las clases:
// - SalaInicial
// - Pista1
// - Victoria
// - Atrapado

class SalaInicial extends StatelessWidget {
  const SalaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escape Room')),
      body: Center(
        child: Column(
          children: [
            Text('Aquí empieza tu Escape Room'),
            ElevatedButton(onPressed: (){Navigator.pushNamed(context,'/');}, child: Text("empezar"))
          ],
        ),
      ),
    );
  }
}

class Pista1 extends StatelessWidget {
  const Pista1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pista 1')),
      body: const Center(
        child: Text('Segunda pantalla del Escape Room'),
      ),
    );
  }
}

class Victoria extends StatelessWidget {
  const Victoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Victoria')),
      body: const Center(
        child: Text('Has escapado con éxito'),
      ),
    );
  }
}

class Atrapado extends StatelessWidget {
  const Atrapado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Over')),
      body: const Center(
        child: Text('Has quedado atrapado'),
      ),
    );
  }
}