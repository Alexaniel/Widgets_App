

import 'package:flutter/material.dart';
import 'package:widgets_app/src/providers/menu_provider.dart';
import 'package:widgets_app/src/utils/icon_string_util.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de componentes'),
      ),
      body: _listaComponentes(),
    );
  }

  //Se crea la lista de componentes con el json que se carga 
  Widget _listaComponentes() {

    //print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [ ], //opcional pero mejor siempre tener que data se inicia 
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );

    //solo se va a ejecutar una vez
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context ) {
    
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text( opt['texto'] ),
        //icono antes del texto
        leading: getIcon(opt['icon']),
        //icono luego del texto
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){


          Navigator.pushNamed(context, opt['ruta'] );
          
          //Nagevacion normal enviando el context
          /* final route = MaterialPageRoute(
            builder: (context) => AlertView(), Aqui se puede mandar argumentos con nombre {} y posicionales '',''
          );
          Navigator.push(context, route); */

        },

      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });

    return opciones;
  }
}
