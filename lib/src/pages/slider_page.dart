import 'package:flutter/material.dart';
class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Sliders'),
      ),
      body:Container(
        padding: EdgeInsets.only(top:50), 
        child: Column(
          children:[
            _crearSlider(),
            Expanded(child: _crearImagen())
          ]
        )
        
        )
    );
  }

Widget _crearSlider() {
  return Slider(
    activeColor:Colors.indigoAccent,
    label:'Tamaño De La Imagen',
    value:_valorSlider,
    //Se puede agrgar como puntos al slider
    //divisions:20,
    min:10,
    max:100,
    onChanged:(valor){
      setState((){
        _valorSlider=valor;
      });
      
    }
  );
}
  Widget _crearImagen() {
    return Image(
      image:NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpngimg.com%2Fuploads%2Fbatman%2Fbatman_PNG34.png&f=1&nofb=1'),
      width: _valorSlider,
      fit:BoxFit.contain,
    );
  }
}