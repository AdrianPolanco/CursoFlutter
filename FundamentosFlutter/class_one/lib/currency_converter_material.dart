import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
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

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(178, 236, 254, 1),
              Color.fromRGBO(171, 235, 255, 1)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: const Center(
              child: Column(
                //Las columnas solo toman el espacio el cual sus widgets hijos necesiten
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Currency converter",
                    //textScaleFactor: 2.5,
                    style: TextStyle(
                        color: Color.fromRGBO(125, 214, 247, 1),
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "0 ",
                        textScaleFactor: 1,
                        style: TextStyle(fontSize: 80),
                      ),
                      Text(
                        "USD",
                        textScaleFactor: 1,
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        decoration: InputDecoration(
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
                ],
              ),
            ),
          )),
    );
  }
}
