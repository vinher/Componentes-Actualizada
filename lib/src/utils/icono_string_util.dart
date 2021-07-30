import 'package:flutter/material.dart';

final _icons=<String, IconData>{
  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,

};



Icon getIcon(String nombreIcono){
  //Metodo para regresar el icono del string que recibo
 
  return Icon(_icons[nombreIcono],color: Colors.amber,);
 }