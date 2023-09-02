import 'package:class_one/my_appbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:class_one/mixins.dart';

class CurrencyConverterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CurrencyConverterAppState();
  }
}

class _CurrencyConverterAppState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class CurrencyConverterMaterialPage extends StatelessWidget
    with CalculateMixin {
  //El super.key lo asigna por defecto incluso si no le especificamos al llamar al widget
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
            color: Color.fromRGBO(0, 0, 0, 1),
            width: 2,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.all(Radius.elliptical(180, 180)));
    final TextEditingController textEditingController = TextEditingController();

    return MaterialApp(
      home: Scaffold(
          //Puedo crear mis propios Widgets personalizados para aplicarlos en lugar de los Widgets por defecto, por ejemplo, MyAgriendAppBar es un widget creado por mí, el cual cree para poder aplicar un appbar que tenga degradado ya que el appbar normal no lo tiene. Puedo usar mi propio Widget aquí gracias a que implemento la interfaz PreferredSizedWidget, al igual que los appbar por defecto, por lo que aquí me permite utilizarla
          appBar: const MyGradientAppBar(
            title: "Currency Converter App",
            gradient: LinearGradient(colors: <Color>[
              Color.fromRGBO(171, 235, 255, 1),
              Color.fromRGBO(178, 236, 254, 1),
              Color.fromRGBO(178, 236, 254, 1),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            actions: [Icon(Icons.access_alarms), Icon(Icons.ad_units)],
          ),
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
                        child: const Text(
                          "0 ",
                          textScaleFactor: 1,
                          style: TextStyle(fontSize: 80),
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
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 3, horizontal: 3),
                            label: Text("USD:"),
                            hintText: "Introduce doláres",
                            prefixIcon: Icon(
                              Icons.monetization_on_outlined,
                              fill: 1,
                            ),
                            suffixIconColor: Color.fromRGBO(125, 214, 247, 1),
                            filled: true,
                            fillColor: Colors.transparent,
                            focusedBorder: border,
                            enabledBorder: border),
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
                          if (kDebugMode) print(Calcular(1, 2));
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
