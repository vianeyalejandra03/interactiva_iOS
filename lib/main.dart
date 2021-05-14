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
          padding: const EdgeInsets.all(16),
          child: Container(
            //zona verde
            color: Colors.greenAccent[400],
            width: 1000,
            height: 570,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //contenedor dentro del children
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.orange,
                  width: 500,
                  height: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.red,
                        width: 60,
                        height: 55,
                      ), //fin container rojo
                      SizedBox(width: 16),
                      Container(
                        color: Colors.blue,
                        width: 60,
                        height: 55,
                      ), //fin container azul
                      SizedBox(width: 16),
                      Container(
                        color: Colors.green,
                        width: 60,
                        height: 55,
                      ), //fin container verde
                    ], //fin del widget[]
                  ), //fin del row fin de fila 1
                ), //fin del container naranja

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
