void main() {
  final myHero = Hero(pName: "Deku", pPower: "One For All");
  print(myHero.toString());
  print("${myHero.name}, ${myHero.power}");
}

class Hero {
  String name;
  String power;

  // Hero(this.name, this.power);

  Hero({required String pName, String pPower = "No Power"})
      : name = pName,
        power = pPower;

  //Sobreescribiendo un metodo en Dart, para esto se usa el @override y a continuacion se sobreescribe el metodo en cuestion
  @override
  String toString() {
    return "Metodo sobreescrito";
  }
}
