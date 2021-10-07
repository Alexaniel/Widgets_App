import 'package:flutter/material.dart';

class HomeViewTemp extends StatelessWidget {


  final opciones = ['1','2','3','4','5'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Componentes')
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }


  /* List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      //se crea el widget 
      final tempWidget = ListTile(
        title: Text( 
          opt,
          style: TextStyle( color: Colors.cyan), 
        ),
      );

      lista..add( tempWidget )
          ..add(Divider(
            height: 10.0,
            color: Colors.cyan,
            indent: 15.0,
            endIndent: 15.0,
            thickness: .6,
          ));
    }
    return lista;
  } */


  List<Widget> _crearItemsCorta(){

    return opciones.map((item) {

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Subtitulo del elemento'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
      
    }).toList();

  }
}


