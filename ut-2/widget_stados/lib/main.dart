import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Flutter',
      home: BotonFavorito(),
    );
  }
}

// 🔹 Widget con estado
class BotonFavorito extends StatefulWidget {
  const BotonFavorito({super.key});

  @override
  _BotonFavoritoState createState() => _BotonFavoritoState();
  // También válido: State<MiWidgetConEstado> createState() => _MiWidgetConEstadoState();
}

// 🔹 Clase de estado asociada al widget
class _BotonFavoritoState extends State<BotonFavorito> {
  bool isFavourite = false;
  void _toggleFavourite() {
    setState(() {
      isFavourite = !isFavourite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo StatefulWidget')),
      body: Center(
        child: Column(
          children: [
            IconButton(
              icon: isFavourite
                  ? Icon(Icons.favorite, size: 100, color: Colors.red)
                  : Icon(Icons.favorite_border, size: 100, color: Colors.grey),
              onPressed: () {
                _toggleFavourite();
              },
            ),
            SizedBox(height: 20),
            Text(
              isFavourite
                  ? '¡Añadido a favoritos ❤️!'
                  : 'Pulsa para marcar como favorito 🤍',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
