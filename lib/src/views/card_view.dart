

import 'package:flutter/material.dart';


class CardView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista de Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        children: <Widget>[

          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo2(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo2(),
          SizedBox(height: 10.0),
          _cardTipo1(),

        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: Icon(Icons.photo_album, color: Colors.cyan),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text('Loremp insump aheyr suyrtn djsuyhhdrtn djsuyhhd rtn djsuyhhd rtn djsuyhhd rtn djsuyhhd rtn djsuyhhd'),
            onTap: (){},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container (
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
            placeholder: AssetImage('assets/img/original.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 200.0,
            width: 800.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Text('Este es un texto'),
          )
        ],

      ),

    );

    return Container(
      margin: EdgeInsets.symmetric(horizontal:5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: card,
      ),
    );
  }

}