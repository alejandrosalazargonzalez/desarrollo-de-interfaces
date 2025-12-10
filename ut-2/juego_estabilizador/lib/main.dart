import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Flutter',
      home: EstabilizadorPage(),
    );
  }
}

class EstabilizadorPage extends StatefulWidget {
  const EstabilizadorPage({super.key});

  @override
  State<EstabilizadorPage> createState() => _EstabilizadorPageState();
}

class _EstabilizadorPageState extends State<EstabilizadorPage> {
  double energia = 50;

  void subirEnergia() {
    if (energia < 100) {
      setState(() {
        energia = energia + 10;
      });
    }
  }

  void bajarEnergia() {
    if (energia > 0) {
      setState(() {
        energia = energia - 10;
      });
    }
  }

  Text getStatus() {
    if (energia == 100) {
      return Text("Energia estabilizada",style: TextStyle(color:Colors.green, fontWeight: FontWeight.bold,fontSize: 20 ),);
    }
    if (energia == 0) {
      return Text("Sistema colapsado",style: TextStyle(color:Colors.redAccent, fontWeight: FontWeight.bold,fontSize: 20 ),);
    }
    return Text("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Estabilizador')),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Energía: ${energia.toInt()}%',
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 20),

            LinearProgressIndicator(value: energia / 100, minHeight: 20),

            const SizedBox(height: 30),
            getStatus(),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: bajarEnergia,
                  child: const Text('-10'),
                ),

                ElevatedButton(
                  onPressed: subirEnergia,
                  child: const Text('+10'),
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
