import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {

  String _nombre="", _apellido="", _emailv="", _fecha="", _opcionSeleccionada = "Volar";  
  List _poderes = ['Volar','Rayos X','Super Velocidad'];
  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Inputs')
      ),
      body:ListView(
        padding:EdgeInsets.symmetric(horizontal:10.0,vertical:20.0),
        children:[
          _crearInput(),
          Divider(),
          _apellidos(),
          Divider(),
          _email(),
          Divider(),
          _crearPersona(),
         Divider(),
         _crearPassword(),
         Divider(),
         _crearFecha(context),
         Divider(),
         _crearDropDown(),
        ]
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //Activar el teclado
      //autofocus:true,
      //POner las principales letras en mayusculas
      textCapitalization:TextCapitalization.sentences,
      decoration:InputDecoration(
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(15.0),
        ),
        counter:Text('Cantidad De Letras: ${_nombre.length}'),
        hintText:'Nombre de la persona',
        labelText:'Nombre',
        helperText: 'Introduzca Solo El Nombre',
        suffix: Icon(Icons.accessibility),
        icon:Icon(Icons.account_circle)
      
      ),
      
    onChanged:(valor){
      setState((){
        _nombre = valor;

      });
      
    }
    
    );
  }

  Widget _apellidos(){
    //Creamos el input simple
    return TextField(
      //Coloca la primera letra de cada frase en mayusculas
      textCapitalization:TextCapitalization.sentences,
      //Creamos el contorno del input
      //Aqui es donde le damos el estilo al input
      decoration:InputDecoration(
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(20.0),
        ),
        counter:Text('Cantidad De Letras: ${_apellido.length}'),
        hintText:'Apellidos De La Persona',
        labelText:'Apellidos',
        helperText:'Introduzca los apellidos',
        suffix: Icon(Icons.person_add),
        icon:Icon(Icons.account_circle)

      ),
        onChanged:(valor){
        setState((){
          _apellido = valor;

      });
      
    }
    );
  }
  
Widget _email(){
    return TextField(
      
      keyboardType: TextInputType.emailAddress,
      decoration:InputDecoration(
      counter:Text('Cantidad De Letras: ${_emailv.length}'),
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(20.0),
        ),
        hintText:'Email:',
        labelText:'Email:',
        helperText:'Introduzca Su Email',
        suffix: Icon(Icons.alternate_email),
        icon:Icon(Icons.email)

      ),
    onChanged:(valor){
      setState((){
        _emailv = valor;
      });
    }


    ); 
  }

 Widget _crearPersona() {
   return ListTile(
     title:Text('Nombre Es: $_nombre\nApellidos: $_apellido \nEmail: $_emailv'),
   );
 }

 Widget _crearPassword() {
 return TextField(
      
      obscureText:true,
      decoration:InputDecoration(
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(20.0),
        ),
        hintText:'Password:',
        labelText:'Password:',
        helperText:'Introduzca Su Password',
        suffix: Icon(Icons.lock_open),
        icon:Icon(Icons.lock)

      ),
    onChanged:(valor){
      setState((){
        _emailv = valor;
      });
    }
    ); 
  }

Widget _crearFecha(BuildContext context) {
    return TextField(
        
        enableInteractiveSelection:false,
        controller:_inputFieldDateController, 
        decoration:InputDecoration(
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(20.0),
        ),
        hintText:'Fecha De Nacimiento',
        labelText:'Fecha De Nacimiento:',
        helperText:'Introduzca Su Password',
        suffix: Icon(Icons.perm_contact_calendar),
        icon:Icon(Icons.calendar_today)

      ),
      onTap: (){
        //Quitar el foco de la caja de texto selecciónada
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      }
    );
  }

_selectDate(BuildContext context) async {
  DateTime? picked = await showDatePicker(
    context: context,
    initialDate: new DateTime.now(),
    firstDate: new DateTime(2021), 
    lastDate: new DateTime(2025),
    locale:Locale('es','ES'),
  );
if(picked != null){
  setState((){
    _fecha = picked.toString();
    _inputFieldDateController.text = _fecha;
  });
}

}

List<DropdownMenuItem<String>> getOpciones(){
  List<DropdownMenuItem<String>> lista =  []; 
  _poderes.forEach((poder) { 
    lista.add(DropdownMenuItem(
      child:Text(poder),
      value:poder,
    ));
  });
  return lista;
}

Widget _crearDropDown(){
  return Row( 
    children:[
      Icon(Icons.select_all),
      SizedBox(width:30.0),
      
      Expanded(
        child: DropdownButton<String>(
          value:_opcionSeleccionada,
          items:getOpciones(),
          onChanged:( opt ){
            setState((){
              _opcionSeleccionada = opt!;
              });
            },
          ),
      )
    ],
  ); 
  
  
  }
}