void main() {
  final String pokemon = "Ditto";
  final int hp = 100;
  //Ponemos el ? despues del tipo de dato para especificar que esa variable puede admitir valores null
  final bool? isAlive = true;
  //Para crear una lista en dart usamos List<Tipo de dato que usaremos> y despues la variable;
  final List<String> abilities = ["Impostor"];
  final sprites = <String>["Front"];
  //Esta lista que tiene elementos de diversos tipos de datos, es una List<Object>
  final randomList = ["X", 7, 7.5, true];

//Para imprimir en varias lineas usamos triple comillas de cada lado
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $randomList
  """);
}
