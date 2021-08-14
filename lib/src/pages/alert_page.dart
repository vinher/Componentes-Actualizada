import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
        centerTitle: true,
        
      ),
      body:Center(
        child: ElevatedButton(
          child:Text('Mostrar Alerta'),
          onPressed: () => _mostrarAlert(context),
          style:ElevatedButton.styleFrom(
            primary: Colors.red,
            shape:StadiumBorder()
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
    );

  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          //Redondear Bordes
          shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
          title:Text('Titulo'),
          content:Column(
            //Tamaño de la caja del dialogo del modal
            mainAxisSize: MainAxisSize.min,
            children: [
            Text('Este es el cotenido de la caja alerta'),
            FlutterLogo(size:100.0)

          ],),
          actions: [
            TextButton(
              child:Text('Cancelar'),
              onPressed: ()=>Navigator.of(context).pop(), 
            ),
            TextButton(
              child:Text('Ok'),
              onPressed: (){
                Navigator.of(context).pop();
              }, 
            )

          ],
        );
      },
      );
  }
}