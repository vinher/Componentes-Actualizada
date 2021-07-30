import 'package:flutter/material.dart';

class HomaPageTemp extends StatelessWidget {
  final opciones = ['Uno','Dos','Tres','Cuatro'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Componentes App'),
        centerTitle: true,
      ),
      body: ListView(
        //Un list view es muy parecido a las columnas y rows
        //Cuenta con su children y puede ir cualquier cosa dentro
        children: _crearItems()
      ),
    );
  }
List <Widget> _crearItems(){
  List<Widget> lista =  <Widget>[];
  for(String opt in opciones){
    final tempWidget = ListTile(
      title: Text(opt),
      //Subtitulo
      subtitle: Text('Hola Mundo'),
      //Propiedad para el icono inicial 
      leading: Icon(Icons.account_balance),
      //Propiedad para el icono final
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap:(){},
    );

    lista.add(tempWidget);
    lista.add(Divider());
    //Divider:Cuenta con propiedades de color y 
    // de altura la cual la altura permite poner un ancho en los elementos


  }
  return lista;
} 

}