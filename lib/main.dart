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
      home: HomePage(),
    ); //fin de material app
  } //fin de widget interactiva app
} //fin de interactiva app

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selected;

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
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue,
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

                SizedBox(height: 20),
                Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Introduce tu usuario',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigo[400],
                          width: 5.0,
                        ),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                        ),
                      ),
                      //! Change the Focused Border
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 5.0,
                        ),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                        ),
                      ), //codigo al momento de tocar el cuadro
                    ), //decoracion del cuadro del usuario name
                  ), //fin textfield
                ), //container del cuadro de texto nombre de usuario

                SizedBox(height: 10),
                Container(
                  // height: 150,
                  //width: 500,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Introduce tu correo electronico',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigo[400],
                          width: 5.0,
                        ),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                        ),
                      ),
                      //! Change the Focused Border
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 5.0,
                        ),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                        ),
                      ), //codigo al momento de tocar el cuadro
                    ), //decoracion del cuadro del usuario correo
                  ), //fin textfield
                ), //container del cuadro de texto de correo

                SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.blue[700],
                  width: 500,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 0),
                      Container(
                        width: 140, height: 100,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Año.Nac',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 5.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 5.0,
                              ),
                            ), //accion al dar click
                          ),
                        ), //fin del textfield
                      ), //fin de container añonac
                      SizedBox(width: 16),
                      //Container(color: Colors.blue, width: 140, height: 100),
                      Container(
                        child: DropdownButton(  background-color: Colors.white,
                          value: _selected,
                          hint: Text('T/Mascota'),
                          items: [
                            'Perros',
                            'Conejos',
                            'Gatos',
                            'Reptiles',
                            'Otros'
                          ].map((choice) {
                            return DropdownMenuItem(
                              child: Text(choice),
                              value: choice,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _selected = value;
                            });
                          },
                        ),
                      ), //fin container del drop
                    ],
                  ),
                ), //fin del container
                SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.blue[700],
                  width: 500,
                  height: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 0),
                      Container(
                        width: 140,
                        height: 100,
                        child: RaisedButton(
                          onPressed: () => {},
                          child: Text('Registrarse'),
                          color: Colors.indigo,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0), side: BorderSide(color: Colors.white)),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 140,
                        height: 100,
                        child: RaisedButton(
                          onPressed: () => {},
                          child: Text('limpiar'),
                          color: Colors.indigo,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0), side: BorderSide(color: Colors.white)),
                        ),
                      ),
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

List<DropdownMenuItem<String>> _dropDownItem() {
  List<String> ddl = [
    "Male",
    "Female",
    "Others"
  ];
  return ddl
      .map((value) => DropdownMenuItem(
            value: value,
            child: Text(value),
          ))
      .toList();
}
