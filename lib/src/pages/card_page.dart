import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"), 
        centerTitle: true,
        ),
        body:ListView(
          padding: EdgeInsets.all(10.5),
          children: [
            _cardTipo1(),
            SizedBox(height:30),
            _cardTipo2()
          ],
        ) ,
    );
  }
  Widget _cardTipo1(){
    return Card(
      //Sombra es la propiedad elevation
      elevation:10.0,
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album,color: Colors.amber,),
            title:Text("Titulo de la Tarjeta"),
            subtitle: Text("Esto es una descripción de tarjetas"),
          ),
          Row(
            //Coloca los botones al final
            mainAxisAlignment:MainAxisAlignment.end,
            children: [
            TextButton(
              child:Text("Cancelar"),
              onPressed: (){}
              ),
              TextButton(
              child:Text("Ok"),
              onPressed: (){}
              ),

          ],)
        ],
      ),
    );

  }
  Widget _cardTipo2(){
    final card =  Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          //Icono de cargar
          FadeInImage(
            image:NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds:200),
            height:350.0,
            fit: BoxFit.cover,
          ),

          Container(
            padding:EdgeInsets.all(10.0),
            child:Text('Texto de Prueba')
          )
        ],),
    );
    //Container es como si fuera un div de html
    return Container(
      
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(20.0),
        color:Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.amber.shade300,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          //Posicion
          offset:Offset(2.0,10.0) 
          )
      ]
      ),
      child:ClipRRect(
        borderRadius:BorderRadius.circular(20.0),
        child:card
      ),
    );
  }

}