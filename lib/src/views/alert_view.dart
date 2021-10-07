

import 'package:flutter/material.dart';

class AlertView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Vista de Alertas')
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.cyan,
          textColor: Colors.white,
          shape: StadiumBorder() ,
          onPressed: () => _mostrarAlert(context),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backspace),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }


  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
          title: Text('Alert'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de la alerta'),
              FlutterLogo(
                size: 100.0,
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text('Cancelar')
            ),
            FlatButton(
              onPressed: () { }, 
              child: Text('OK')
            )
          ],
        );
      }
    );
  }
}