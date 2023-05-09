import 'package:flutter/material.dart';
//import 'package:hello_world/presentation/screens/counter/counter_screen.dart';
import 'package:hello_world/presentation/screens/counter/counter_screen_functions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //Aqui estamos creando un constructor para este Widget Publico, de manera que el BuildContext pueda identificar con el key a este widget, es una buena practica en Flutter
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Usamos const en este Widget estatico para aumentar el rendimiento en Flutter, al decirle que es estatico usando const, Flutter generara un codigo "especial" de este Widget que lo hara mas rapido al ya saber que es un const
    return MaterialApp(
      //Usamos este parametro para quitar la cinta o el aviso que dice Debug en la esquina derecha de la pantalla del emulador o celular
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //Activando las apariencias de Material Design 3
          useMaterial3: true,
          colorSchemeSeed: const Color.fromRGBO(153, 255, 255, 1)),
      home: const CounterFunctionScreen(),
    );
  }
}
