void main() {
  //Un map en Dart es basicamente algo similar a un objeto de Javascript, es decir, un objeto key-value, pero en Dart, tanto la key como value pueden ser de valores diferentes, es decir, la Key no puede ser solo string, sino que tambien puede ser un numero, por lo que le podemos especificar que valores tendra la key y el value usando Map<DataType1, DataType2> o simplemente no especificarlo para que Dart se adecue
  final Map<String, dynamic> pokemon = {
    "name": "Ditto",
    "hp": 100,
    "isAlive": true,
    "abilities": <String>["Impostor"],
    //Como vemos, podemos usar incluso numeros como keys
    "sprites": {1: "ditto/front.png", 2: "ditto/back.png", "artwork": "Default"}
  };

  print(pokemon["hp"]);
  //Se acceden a los valores de un map en Dart con la sintaxis de los corchetes
  print(pokemon["abilities"][0]);
  print("Front: ${pokemon["sprites"][1]}");
  print("Back: ${pokemon["sprites"][2]}");
  print(pokemon["sprites"]["artwork"]);
}
