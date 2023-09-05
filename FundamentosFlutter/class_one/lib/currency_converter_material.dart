import 'package:class_one/my_appbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:class_one/mixins.dart';

class CurrencyConverterApp extends StatefulWidget {
  const CurrencyConverterApp({super.key});
  @override
  State<CurrencyConverterApp> createState() => _CurrencyConverterAppState();
}

class _CurrencyConverterAppState extends State<CurrencyConverterApp>
    with CalculateMixin {
  //El super.key lo asigna por defecto incluso si no le especificamos al llamar al widget
  double _result = 0.0;
  final MyGradientAppBar _gradientAppBar = const MyGradientAppBar(
    title: "Currency Converter App",
    gradient: LinearGradient(colors: <Color>[
      Color.fromRGBO(171, 235, 255, 1),
      Color.fromRGBO(178, 236, 254, 1),
      Color.fromRGBO(178, 236, 254, 1),
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
    actions: [Icon(Icons.access_alarms), Icon(Icons.ad_units)],
  );
  final _border = const OutlineInputBorder(
      borderSide: BorderSide(
          color: Color.fromRGBO(0, 0, 0, 1),
          width: 2,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside),
      borderRadius: BorderRadius.all(Radius.elliptical(180, 180)));
  final TextEditingController textEditingController = TextEditingController();

  //Todos estos metodos sobreescritos tienen que ver con el "ciclo de vida de los Widgets"
  @override
  void initState() {
    super.initState(); //Se ejecuta primero que el constructor
  }

  @override
  void dispose() {
    textEditingController
        .dispose(); //Usamos el dispose para eliminar el widget del arbol de widgets y con eso liberar y limpiar recursos de forma adecuada, se manda a llamar automaticamente al, por ejemplo, cambiar de vista o eliminar una vista, se usan especialmente al trabajar con controladores, por ejemplo: TextEditingController
    super.dispose();
  }

//Se usa para dar instrucciones especificas cuando las dependencias del Widget cambian (i.e. Cuando por ejemplo los datos que arroja una fuente de datos externa como una API se actualizan), no cambia las propiedades del Widget en sí
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

//Se usa para dar instrucciones especificas cuando las propiedades del Widget cambian, creando una nueva instancia del Widget padre
  @override
  void didUpdateWidget(covariant CurrencyConverterApp oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

//IMPORTANTE: No puedes llamar funciones asincronar en el metodo build, sino fuera, ya que el metodo build puede ser llamado muchas veces conforme a los Hz de la pantalla del celular, si por ejemplo un celular tiene 120Hz, la funcion build podria ser llamada hasta 120 veces por segundo, por tanto, por cuestiones de rendimiento y optimización, debemos evitar usar funciones asincronas (ya que se harian demasiadas solicitudes en un segundo) e intentar mantener la funcion build lo más liviana posible

//El metodo build sirve para renderizar los componentes o widgets en pantalla
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          //Puedo crear mis propios Widgets personalizados para aplicarlos en lugar de los Widgets por defecto, por ejemplo, MyGradientAppBar es un widget creado por mí, el cual cree para poder aplicar un appbar que tenga degradado ya que el appbar normal no lo tiene. Puedo usar mi propio Widget aquí gracias a que implemento la interfaz PreferredSizedWidget, al igual que los appbar por defecto, por lo que aquí me permite utilizarla
          appBar: _gradientAppBar,
          body: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(178, 236, 254, 1),
              Color.fromRGBO(178, 236, 254, 1),
              Color.fromRGBO(171, 235, 255, 1)
            ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
            child: Center(
              child: Column(
                //Las columnas solo toman el espacio el cual sus widgets hijos necesiten
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Cantidad en doláres",
                    //textScaleFactor: 2.5,
                    style: TextStyle(
                        color: Color.fromRGBO(125, 214, 247, 1),
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "$_result",
                          textScaleFactor: 1,
                          style: const TextStyle(fontSize: 80),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          "USD",
                          textScaleFactor: 1,
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        controller: textEditingController,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 3),
                            label: const Text("RD"),
                            hintText: "Introduce pesos dominicanos",
                            prefixIcon: const Icon(
                              Icons.monetization_on_outlined,
                              fill: 1,
                            ),
                            suffixIconColor:
                                const Color.fromRGBO(125, 214, 247, 1),
                            filled: true,
                            fillColor: Colors.transparent,
                            focusedBorder: _border,
                            enabledBorder: _border),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color.fromRGBO(52, 206, 253, 1),
                          Color.fromRGBO(48, 138, 255, 1)
                        ]),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            String pesos = textEditingController.value.text;
                            _result = fromPesoToDollar(pesos, _result);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 50,
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 20),
                            textStyle: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.monetization_on_sharp),
                            SizedBox(width: 20),
                            Text(
                              "Calcular",
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
