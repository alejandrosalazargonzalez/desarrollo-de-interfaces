import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class ThemeNotifier extends ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch().isDark;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tema claro/oscuro',

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0455BF),
          brightness: Brightness.light,
        ),
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0455BF),
          brightness: Brightness.dark,
        ),
      ),

      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      routes: {
        '/': (_) => const HomePage(),
        '/pantalla2': (_) => const Pantalla2(),
      },

      //home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // ----- FUNCIÓN EXTRAÍDA -----

  @override
  Widget build(BuildContext context) {
    final toggleTheme = context.read().toggleTheme;
    final isDark = context.watch().isDark;

    return Scaffold(
      appBar: AppBar(title: const Text('Tema claro / oscuro')),

      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: toggleTheme,
              child: Text(isDark ? 'Cambiar a claro' : 'Cambiar a oscuro'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');

                /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pantalla2()),
                );*/
              },
              child: Text('Ir a pantalla B'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: toggleTheme,
        child: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
      ),
    );
  }
}

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});
  @override
  Widget build(BuildContext context) {
    final toggleTheme = context.read().toggleTheme;
    final isDark = context.watch().isDark;

    return Scaffold(
      appBar: AppBar(title: const Text('Tema claro / oscuro')),

      body: Center(
        child: ElevatedButton(
          onPressed: toggleTheme,
          child: Text(isDark ? 'Cambiar a claro' : 'Cambiar a oscuro'),
        ),
      ),
    );
  }
}
