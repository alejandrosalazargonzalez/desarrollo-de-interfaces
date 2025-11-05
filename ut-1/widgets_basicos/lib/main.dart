import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text("Hola mundo"),
          centerTitle: true,
          leading: Image.asset("assets/images/homer.gif"),
          backgroundColor: Colors.pinkAccent,
          ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  
                )
              ],
            ),
          )
          )
        )
      ),
  );
}