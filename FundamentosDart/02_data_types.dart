//Importando variable de un archivo Dart en otro archivo Dart
//import '03_dynamic_type.dart' show errorMesage;
//Importando de forma "lazy-loading" una libreria usando deferred as NombreLibreria
import '03_dynamic_type.dart' deferred as errorMesage;

//La funcion necesita ser asincrona ya que va a cargar diferidamente la libreria cuando lo necesite
void main() async {
  final String pokemon = "Ditto";
  final int hp = 100;
  //Ponemos el ? despues del tipo de dato para especificar que esa variable puede admitir valores null
  final bool? isAlive = true;
  //Para crear una lista en dart usamos List<Tipo de dato que usaremos> y despues la variable;
  final List<String> abilities = ["Impostor"];
  final sprites = <String>["Front", "Back"];
  //Esta lista que tiene elementos de diversos tipos de datos, es una List<Object>
  final randomList = ["X", 7, 7.5, true];
  final double numero = 1.2e45;
  //Num es un tipo de dato que puede contener tanto enteros como decimales
  num number = 1;
  print(number);
  number += 0.5;
  print(number);
  final date = DateTime.now();

//Para imprimir en varias lineas usamos triple comillas de cada lado
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $randomList
  """);
  if (pokemon == "Ditto") {
    print("Soy Ditto");
  }

//Dart soporta ambas sintaxis para el for
  for (String sprite in sprites) {
    print(sprite);
  }

  for (int i = 0; i < sprites.length; i++) {
    print("Iteración ${i + 1}: ${sprites[i]}");
  }

  //Parseando strings numericos;
  final String numeroSinParsear = "20";
  final int? stringParseado = int.tryParse(numeroSinParsear);
  final int dos = 2;
  final String numeroToString = stringParseado.toString();
//Filtrando en una lista
  print(sprites.where((element) => element == "Front"));
  print(date);
  //Usando await y el metodo loadLibrary() para cargar la libreria antes de usarla
  await errorMesage.loadLibrary();
  print(errorMesage.errorMesage);
  print(numero);
  print(stringParseado);
}
