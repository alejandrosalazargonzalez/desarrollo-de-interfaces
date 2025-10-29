import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currículum Vitae',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.blue[50],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/profile.jpg'), // Cambia la ruta con la imagen de perfil
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'ALEJANDRO SALAZAR GONZÁLEZ',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        '+34 674 211 818',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Idiomas: Español: Nivel medio',
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'COMPETENCIAS',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text('2 meses como programador full stack.'),
                    ],
                  ),
                ),
                const SizedBox(width: 20), // Espacio entre columnas
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'EDUCACIÓN',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text('Bachillerato'),
                      const Text('IES Rafael Arozarena, 2020 - 2022'),
                      const Text('Desarrollo de aplicaciones Multiplataforma'),
                      const SizedBox(height: 20),
                      const Text(
                        'CAPACIDADES',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text('Programación en C#, C++, Java, HTML5 y PHP.'),
                      const Text('Nivel medio en Fusion360.'),
                      const Text('Certificación en programación 3D con Unity.'),
                      const Text('Experiencia en modelado 2D en Unity.'),
                      const SizedBox(height: 20),
                      const Text(
                        'Fecha de finalización: 11 de 2025',
                        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
