import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("has pulsado $_counter veces",
          style: TextStyle(fontSize: 20),),
        SizedBox(height: 20,),
        ElevatedButton(
          onPressed:() => setState(() {
            _counter ++;
          }),
          child:Text("pulsame"),
          )
      ],
    );
  }
}

class SwitchWidget extends StatefulWidget{
  const SwitchWidget({super.key});

  @override
  State<StatefulWidget> createState() => _SwitchWidget();

}

class _SwitchWidget extends State<SwitchWidget>{
  bool _isOn = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Switch(value: _isOn, onChanged: (value) {
            setState(() {
              _isOn = value;
            }
            );
          }
        ),
        Text(_isOn ? "Interruptor activado" : "Interruptor desactivado", style: TextStyle(fontSize: 20),)
      ],
    );
  }
}

class SliderWidget extends StatefulWidget{
  const SliderWidget({super.key});

  @override
  State<StatefulWidget> createState() => _SliderWidget();
}

class _SliderWidget extends State<SliderWidget>{
  double _value = 50.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(value: _value,min: 0,max: 100, onChanged:(value) {
          setState(() {
            _value = value;
          });
        }
        ),
        Text(_value.toStringAsFixed(1))
      ],
    );
  }
}

class TextSliderWidget extends StatefulWidget{
  const TextSliderWidget({super.key});

  @override
  State<StatefulWidget> createState() => _TextSliderWidget();
}

class _TextSliderWidget extends State<TextSliderWidget>{
  double _fontSize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Texto dinamico", style: TextStyle(fontSize: _fontSize),),
        Slider(value: _fontSize,min: 10,max: 60, onChanged:(value) {
          setState(() {
            _fontSize = value;
          });
        }
        ),
      ],
    );
  }
}

class ColorSliderWidget extends StatefulWidget{
  const ColorSliderWidget({super.key});
  
  @override
  State<StatefulWidget> createState() => _ColorSliderWidget();
}

class _ColorSliderWidget extends State<ColorSliderWidget>{
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
  
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contador con estado'),
          centerTitle: true,
        ),
        body: Center(
          child: ColorSliderWidget(),
        ),
      ),
    );
  }
}

