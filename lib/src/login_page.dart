import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/src/pages/inicio_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('imagenes/principal.jpg'),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'imagenes/logos.jpg',
                  height: 200.0,
                ),
                SizedBox(
                  height: 15.0,
                  width: 50,
                ),
                _userTextField(),
                SizedBox(
                  height: 15.0,
                  width: 50,
                ),
                _passwordTextField(),
                SizedBox(
                  height: 15.0,
                  width: 50,
                ),
                _bottonLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child: TextField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                10.0,
              )),
              icon: Icon(Icons.email),
              hintText: 'example@gmail.com',
              labelText: 'Correo Electronico',
            ),
          ),
        );
      },
    );
  }

  Widget _passwordTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              icon: Icon(Icons.lock),
              hintText: 'Contraseña',
              labelText: 'Contraseña',
              hoverColor: Colors.black45,
              fillColor: Colors.amberAccent,
              hintStyle: TextStyle(fontSize: 20.0),
            ),
          ),
        );
      },
    );
  }

  Widget _bottonLogin() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ElevatedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Text(
              'Iniciar Sesion',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InicioPage()),
            );
          },
        );
      },
    );
  }
}
