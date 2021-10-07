import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider{

  List<dynamic> opciones = [];

  //No se puede usar un constructor asincrono
  _MenuProvider(){
    cargarData();
  }
  //Future envia en un tiempo la lista una vez que se carga (peticiones)
  Future <List<dynamic>> cargarData() async {
    
    final data = await rootBundle.loadString('data/menu_opts.json');
        //Convertir el json en un mapa 
    Map dataMap = json.decode(data);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = new _MenuProvider();