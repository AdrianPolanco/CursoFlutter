import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

//Esto manda a llamar la creacion del estado, que a su vez es otra clase
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //Creando una variable que utilizaremos como "estado"
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    //Scaffold en Flutter es basicamente un Widget que nos da una interfaz para poner botones flotantes, barras, menus, etc.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(153, 255, 255, 1),
        title: const Center(
            child: Text("Counter Screen",
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)))),
      ),
      //Aqui usamos center para centrar la columna que tendra el Scaffold por hija, basicamente le estamos diciendo al body del Scaffold que tenga una columna centrada como hija
      body: Center(
        //Al usar Column, Flutter empezara a calcular las dimensiones de la pantalla del dispositivo para (supongo) saber en que dimensiones imprimira el contenido que especificamos, por tanto, aqui el Scaffold no puede ser const, ya que las dimensiones de las pantallas varian
        child: Column(
          //Centra a los hijos de la columna, o en caso de que el argumento no sea .center, los posiciona dependiendo del argumento
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              //Usando nuestra variable
              "$clickCounter",
              style: const TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w300,
                  color: Color.fromRGBO(153, 255, 255, 1)),
            ),
            Text(
              //Creando codigo para cambiar la palabra Click en singular o plural dependiendo del numero
              //clickCounter == 1 ? "Click" : "Clicks",
              "Click${clickCounter == 1 ? "" : "s"}",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter += 1;
          //Mandando a llamar la funcion para "settear" el estado, es decir, ordenar a Flutter que vuelva a renderizar el contenido con el estado nuevo, en teoria deberia renderizar de nuevo todo el contenido, pero en el caso de Flutter, Flutter revisa cual fue el contenido afectado y solo renderiza nuevamente ese contenido afectado, mientras que para el contenido que siguio igual, simplemente utiliza el estado anterior, esta es otra razon por la que Flutter es tan rapido
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
