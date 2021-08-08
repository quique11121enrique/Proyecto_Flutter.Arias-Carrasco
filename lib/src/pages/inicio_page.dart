import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Principal'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: SizedBox(
                  height: 80.0,
                  width: 60.0,
                  child: Image.asset('imagenes/logos.jpg'),
                ),
                title: Text('Inicio'),
                subtitle: Text('Descripcion'),
              ),
              ListTile(
                leading: SizedBox(
                  height: 80.0,
                  width: 60.0,
                  child: Image.asset('imagenes/logos.jpg'),
                ),
                title: Text('Inicio'),
                subtitle: Text('Descripcion'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
