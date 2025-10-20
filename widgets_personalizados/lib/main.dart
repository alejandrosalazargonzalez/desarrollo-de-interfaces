import 'package:flutter/material.dart';
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home:
        Scaffold(
          appBar: AppBar(
            title: Text('Mi primera app con Scaffold'),
          ),
          body: Center(
            child:InfoCard("Informacion Util",Icon(Icons.info_sharp)),
          ),
        ),
    );
  }
}
class InfoCard extends StatelessWidget{

  final String title;
  final Icon icon;
  const InfoCard(this.title, this.icon, {super.key});

  @override
  Widget build(BuildContext context){
    return Card(
      child: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 10,),
            Text(title)
          ],
        ),
      ),
    );
  }
}
void main() => runApp(MyApp());

