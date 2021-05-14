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
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            //zona verde
            color: Colors.blue,
            width: 1000,
            height: 570,
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //contenedor dentro del children
                Container(
                  padding: const EdgeInsets.all(16),
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
                ), //fin del container imagen

                SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.teal,
                  width: 500,
                  height: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(color: Colors.green, width: 60, height: 55),
                      SizedBox(width: 16),
                      Container(color: Colors.blue, width: 60, height: 55),
                      SizedBox(width: 16),
                      Container(color: Colors.red, width: 60, height: 55),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.orange,
                  width: 500,
                  height: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(color: Colors.red, width: 60, height: 55),
                      SizedBox(width: 16),
                      Container(color: Colors.blue, width: 60, height: 55),
                      SizedBox(width: 16),
                      Container(color: Colors.green, width: 60, height: 55),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.orange,
                  width: 500,
                  height: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(color: Colors.green, width: 60, height: 55),
                      SizedBox(width: 16),
                      Container(color: Colors.blue, width: 60, height: 55),
                      SizedBox(width: 16),
                      Container(color: Colors.red, width: 60, height: 55),
                    ],
                  ),
                ),
              ], //fin del children widget de column widget[]
            ), //fin de column
          ) //fin de container
          ), //fin de padding
    ); //fin de scaffold
  } //widget fin
} //fin class principal
