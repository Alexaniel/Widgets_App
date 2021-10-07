import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedView extends StatefulWidget {
  @override
  _AnimatedViewState createState() => _AnimatedViewState();
}

class _AnimatedViewState extends State<AnimatedView> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
        ),
      ),

      //agrega un boton con accion
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _changeForm,
      ),
    );
  }

  void _changeForm() {
    //propiedad random de paquetes de dart
    final random = Random();
    int a = random.nextInt(255);
    int b = random.nextInt(255);
    int c = random.nextInt(255);
    int d = random.nextInt(100);
    //cambia los valores del estado del boton
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(a, b, c, 1);

      _borderRadius = BorderRadius.circular(d.toDouble());
    });
  }
}
