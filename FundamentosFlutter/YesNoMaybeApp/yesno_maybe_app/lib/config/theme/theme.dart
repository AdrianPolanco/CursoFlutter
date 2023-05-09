import 'package:flutter/material.dart';

//Para usar codigo de colores hexadecimales se debe poner 0xFF y a continuacion, el numero respectivo
const Color customColor = Color(0xFF49149F);

//Las variables que empiezan con _ solo se pueden usar en el archivo en el que se declaren
const List<Color> _colorThemes = [
  customColor,
  Colors.blue,
  Colors.cyan,
  Color.fromARGB(255, 78, 244, 250),
  Color.fromARGB(255, 63, 182, 203),
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red
];

class AppTheme {
  final int selectedColor;
  final Brightness brit;
  AppTheme({this.selectedColor = 0, required this.brit})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            "The argument CANNOT BE higher tan the length of the list of colors");

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: brit);
  }
}
