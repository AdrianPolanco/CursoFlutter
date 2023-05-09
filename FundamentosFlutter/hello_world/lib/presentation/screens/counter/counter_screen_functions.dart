import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

//Esto manda a llamar la creacion del estado, que a su vez es otra clase
  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  //Creando una variable que utilizaremos como "estado"
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    //Scaffold en Flutter es basicamente un Widget que nos da una interfaz para poner botones flotantes, barras, menus, etc.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(153, 255, 255, 1),
          title: const Center(
              child: Text("Counter Functions",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)))),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            )
          ],
          /*Leading pone el contenido que especificamos en el lado izquierdo
        leading: IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: () {},
        ),*/
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
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
              ),
              const SizedBox(height: 150),
              const FlutterLogo(
                size: 100,
              ),
            ],
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(height: 15),
          CustomButton(
              icon: Icons.exposure_minus_1_rounded,
              onPressed: () {
                setState(() {
                  if (clickCounter > 0) clickCounter -= 1;
                });
              }),
          //Creando una caja vacia con altura de 15, que servira para separar los botones verticalmente
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            icon: Icons.plus_one_rounded,
            onPressed: () {
              setState(() {
                clickCounter += 1;
              });
            },
          ),
        ]));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //Haciendo circulares los botones
      //shape: const StadiumBorder(),
      //Activando la vibracion o feedback al presionar los botones
      enableFeedback: true,
      //Sombra
      elevation: 7,
      onPressed: onPressed,
      //El boton contendra el icono especificado
      child: Icon(icon),
    );
  }
}
