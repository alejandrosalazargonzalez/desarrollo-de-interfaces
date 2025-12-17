import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ScientistsPage(),
    );
  }
}

class Scientist {
  final String name;
  final String imageUrl;
  final String descripcion; // Asegúrate de que el nombre coincida abajo
  const Scientist(this.name, this.imageUrl, this.descripcion);
}

class ScientistsPage extends StatelessWidget {
  const ScientistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scientists = [
      const Scientist(
        "Galileo Galilei",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Justus_Sustermans_-_Portrait_of_Galileo_Galilei%2C_1636.jpg/640px-Justus_Sustermans_-_Portrait_of_Galileo_Galilei%2C_1636.jpg",
        "Galileo Galilei formuló la relatividad galileana, donde no existe el movimiento absoluto.",
      ),
      const Scientist(
        "Isaac Newton",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Portrait_of_Sir_Isaac_Newton%2C_1689.jpg/640px-Portrait_of_Sir_Isaac_Newton%2C_1689.jpg",
        "Isaac Newton usó las ideas de Galileo para crear la física clásica, en la que el espacio y el tiempo son absolutos.",
      ),
      const Scientist(
        "Albert Einstein",
        "https://upload.wikimedia.org/wikipedia/commons/d/d3/Albert_Einstein_Head.jpg",
        "Albert Einstein usó la física de Newton para desarrollar la relatividad, donde el espacio y el tiempo no son absolutos, sino que dependen del movimiento del observador.",
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Físicos Ilustres')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: scientists.map((scientist) => GestureDetector(
            onTap: () => Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (_) => ScientistDetailPage(scientist: scientist),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(scientist.imageUrl),
                  radius: 40,
                ),
                Text(scientist.name),
              ],
            ),
          )).toList(),
        ),
      ),
    );
  }
}

class ScientistDetailPage extends StatelessWidget {
  final Scientist scientist;

  const ScientistDetailPage({super.key, required this.scientist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(scientist.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
                Image.network(
                  scientist.imageUrl,
                  height: 300,
                  fit: BoxFit.cover,
                ),

              const SizedBox(height: 20),

              Text(
                scientist.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              Text(
                scientist.descripcion,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}