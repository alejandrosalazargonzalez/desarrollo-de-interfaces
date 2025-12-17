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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bienvenido",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            Text("Toca la tarjeta para más informacion"),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SecondPage()),
                ),
                child: Hero(
                  tag: "soldado",
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/berlin.jpg",
                      width: 300,
                      height: 130,
                      fit: BoxFit.cover
                    ), 
                  ),
                ),
              ),
            ),
          ],
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
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => FirstPage()),
              ),
              child: Hero(
                tag: "soldado",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/berlin.jpg",
                    width: double.infinity,
                    height: 430,
                      fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            const Text(
              'La imagen muestra a Konrad Schumann, un joven guardia de Alemania Oriental, '
              'en el instante en que salta sobre el alambre fronterizo que marcaba el '
              'inicio de la construcción del Muro de Berlín, levantado por la Alemania comunista, '
              'para escapar hacia Berlín Oeste en 1961.',
              textAlign: TextAlign.justify,
            ),
            OutlinedButton(onPressed:() => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => FirstPage()),
              ), child:Text("pa atra")),
          ],
        ),
      ),
    );
  }
}
