import 'package:flutter/material.dart';

void main() {
  runApp(const ComboDemo());
}

class ComboDemo extends StatefulWidget {
  const ComboDemo({super.key});

  @override
  State createState() => _ComboDemoState();
}

class _ComboDemoState extends State {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Animaciones Implícitas Combinadas")),
        body: Center(
          // TODO Animación combinada Cambiar alineación + opacidad + contenedor
          child: AnimatedOpacity(
              opacity: active ? 0.3 : 1,
              duration: Duration(milliseconds: 600),
              child: AnimatedAlign(
                alignment: active
                    ? AlignmentGeometry.centerLeft
                    : AlignmentGeometry.centerRight,
                duration: Duration(milliseconds: 600),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 600),
                  height: active ? 100 : 200,
                  width: active ? 100 : 200,
                  child: Container(color: Colors.black),
                ),
              ),
            ),
          ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              active = !active;
            });
          },
        ),
      ),
    );
  }
}
