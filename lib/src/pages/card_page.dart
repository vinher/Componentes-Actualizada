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
    return Card(
      child: Column(
        children: [
          Image(
            image:NetworkImage('https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
          )
        ],),
    );
  }

}