
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Componentes'),
        centerTitle: true,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      //Es opcional y sirve para que se muestre si no se ha cargado nuestra lista
      //initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        

        return ListView(
          //en la versión 2.2.2 de flutter se usa sin los signos de interrogación 
          // y sin corchetes, pero con nullsafety nos da el error de que no acepta nulos
          //Entonces hacemos que data acepte nulos con los signos y corchetes
          children:_listaItems(snapshot.data??[],context)
        );
      }
    );
  }
//Dato nulo en dynamic corregir
  List<Widget> _listaItems( List <dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    //Revisar dato nullo
    data.forEach((opt){ 
      final widgetTemp = ListTile(
        //El valor de texto se saca del JSON que tenemos
        title: Text(opt['texto']),
        //subtitle: Text('Prueba'),
      
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color:Colors.orange),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          //Navegar a otras pantallas
          //final route = MaterialPageRoute(builder:(context){
            //Se pueden mandar argumentos en el aler page tanto 
            //pocisionales como con nombre
            //return AlertPage();
            //},);       
          
          //Navigator.push(context, route);
        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());

    });

    return opciones;
  }

}