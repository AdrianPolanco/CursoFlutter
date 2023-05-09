void main() {
  final Map<String, dynamic> rawJson = {
    "name": "All Might",
    "power": "One For All",
    "isAlive": true
  };

  final AllMight = Hero(
      pName: "Allmighty",
      currentState: rawJson["isAlive"] ?? false,
      pPower: "OFA");
  print(AllMight.toString());
  final Buggy = Hero.fromJson(rawJson);
  print("Funcion con nombre:");
  print(Buggy.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  // Hero(this.name, this.power);

  Hero(
      {required String pName,
      String pPower = "No Power",
      required bool currentState})
      : name = pName,
        power = pPower,
        isAlive = currentState;

  //Para crear otro constructor en Dart, ponemos el nombre de la clase.Identificador del constructor, que usaremos para llamar a este constructor en especifico, en este caso, este constructor recibira como parametro un map con strings como keys y dynamic como values
  Hero.fromJson(Map<String, dynamic> json)
      //Usamos esta sintaxis para asignarle un valor en caso de que los valores que usemos vengan null
      : name = json["name"] ?? "Buggy",
        power = json["power"] ?? "No Power",
        isAlive = json["isAlive"] ?? "Unknown";

  //Sobreescribiendo un metodo en Dart, para esto se usa el @override y a continuacion se sobreescribe el metodo en cuestion
  @override
  String toString() {
    return "$name, $power, ${isAlive ? "YES!" : "Nope"}";
  }
}
