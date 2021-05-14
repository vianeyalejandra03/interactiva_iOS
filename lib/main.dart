import 'package:flutter/material.dart';

void main() => runApp(MiInteractivaApp());

class MiInteractivaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Interactiva App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Principal(),
    ); //fin de material app
  } //fin de widget interactiva app
} //fin de interactiva app

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA2FFED),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Registro De Mascotas'),
      ), //fin de appbar
      body: Container(
        child: Column(
          margin: EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 10.0,
          ),
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/vianeyalejandra03/mis_imagenes/main/veterinaria1.jpg"), alignment: Alignment.topCenter),
            border: Border(
              top: BorderSide(
                color: Colors.white,
                width: 5.0,
              ),
              bottom: BorderSide(
                color: Colors.white,
                width: 5.0,
              ),
            ),
          ), //fin de el decoration box
        ), //container fin
      ),
    ); //fin de scaffold
  } //widget fin
} //fin class principal
