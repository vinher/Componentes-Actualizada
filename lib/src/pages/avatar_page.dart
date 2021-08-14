import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Avatar'),
        actions: [
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.100hdwallpapers.com%2Fwallpapers%2F2148x1208%2Fvenom-other.jpg&f=1&nofb=1'),
              radius: 30.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child:Text('SL'),
              backgroundColor: Colors.brown,
              //Separación
            ),
          )
        ],
        centerTitle: true,
        
      ),
      body: Center(
        child:FadeInImage(
          image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.100hdwallpapers.com%2Fwallpapers%2F2148x1208%2Fvenom-other.jpg&f=1&nofb=1'),
          placeholder:AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds:200)
        ),
      ),
    );
  }
}