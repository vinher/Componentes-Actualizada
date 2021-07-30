import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';


//import 'package:componentes/src/pages/home_temp.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primarySwatch:Colors.amber
      ),
      //home: HomePage(),
      routes:getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context)=>AlertPage()
          );
      },
    );
  }
}

//ListView
//Permite desplazar 
//contenido que tengamos en la pantalla principal
//Como La aplicación de contactos
//posee varios constructores
//Como List view y listview builder