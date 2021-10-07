import 'package:flutter/material.dart';

class InputsView extends StatefulWidget {
  @override
  _InputsViewState createState() => _InputsViewState();
}

class _InputsViewState extends State<InputsView> {
  String _nombre = '', _email = '', _fecha = '';

  TextEditingController _inputDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs View"),
      ),
      body: Center(
        //el list view permite hacer scroll cuando hay mucho elementos
        child: ListView(
          //permite dar un padding dentro
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            _crearInput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _crearPassword(),
            Divider(),
            _crearFecha(context),
            Divider(),
            _crearPersona(),
          ],
        ),
      ),
    );
  }

  Widget _crearInput() {
    //permite crear un widget
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      //estilos del boton
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombres y apellidos',
          labelText: 'Nombre',
          helperText: 'Solo letras',
          //icono dentro del input
          suffixIcon: Icon(Icons.person),
          icon: Icon(Icons.account_circle)),
      //Permite cambiar el valor del input cuando se ingresa el texto
      onChanged: (valor) {
        //setstate para redibujar el widget
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearEmail() {
    //permite crear un widget
    return TextField(
        keyboardType: TextInputType.emailAddress,
        //estilos del boton
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Correo electrónico ',
            labelText: 'Correo electrónico',
            suffixIcon: Icon(Icons.alternate_email),
            icon: Icon(Icons.email)),
        //Permite cambiar el valor del input cuando se ingresa el texto
        onChanged: (valor) => setState(() {
              _email = valor;
            }));
  }

  Widget _crearPassword() {
    //permite crear un widget
    return TextField(
        obscureText: true,
        //estilos del boton
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Password',
            labelText: 'Password',
            suffixIcon: Icon(Icons.lock_open),
            icon: Icon(Icons.lock)),
        //Permite cambiar el valor del input cuando se ingresa el texto
        onChanged: (valor) => setState(() {
              _email = valor;
            }));
  }

  _selectDate(BuildContext context) async {
    //crear una propiedad
    //regresa un future que da la fecha
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2020),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES')
        );
    
    //si no hay null coloco el valor en la caja de texto
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputDateController.text = _fecha;
      });
    }
  }

  Widget _crearFecha(BuildContext context) {
    //permite crear un widget
    return TextField(
        //es un controlador para tener los cambios haciendo referencia a este input
        controller: _inputDateController,
        enableInteractiveSelection: false,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Fecha de nacimiento',
            labelText: 'Fecha de nacimiento',
            suffixIcon: Icon(Icons.perm_contact_calendar),
            icon: Icon(Icons.calendar_today)),
        onTap: () {
          //quitar el foco cuando se abre el modal
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
        }
        //Permite cambiar el valor del input cuando se ingresa el texto
        );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombres: $_nombre'),
      subtitle: Text('Email: $_email'),
    );
  }
}
