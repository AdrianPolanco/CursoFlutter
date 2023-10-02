import 'dart:ffi';

import 'package:flutter/widgets.dart';

class AdditionalInfoItem extends StatelessWidget {
  final IconData _icon;
  final String _infoTitle;
  final _numberInfo;

  const AdditionalInfoItem(
      {required IconData icon,
      required String infoTitle,
      required numberInfo,
      super.key})
      : _icon = icon,
        _infoTitle = infoTitle,
        //Un assert lanzara una excepcion en caso de que la condicion sea falsa, osea, que para lanzar una excepcion en caso de que el parametro no sea int ni double, debemos pues, poner !(evaluacion) para que en caso de que el parametro no sea ninguno de estos tipos, la evaluacion arroje true, y al usar ! por fuera, entonces sea falsa y arroje la excepcion: !(true) = false
        assert(!(numberInfo is! int && numberInfo is! double),
            "El parametro numberInfo debe de ser un double o un int"),
        _numberInfo = numberInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      //Obteniendo el tamaño del width del dispositivo en el que se esta corriendo la aplicacion y dividiendolo en 18
      //padding: EdgeInsets.all((MediaQuery.of(context).size.width) / 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(_icon, size: 45),
          const SizedBox(
            height: 20,
          ),
          Text(_infoTitle,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$_numberInfo",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          )
        ],
      ),
    );
  }
}
