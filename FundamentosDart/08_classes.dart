void main() {
  //En Dart, no es necesario usar la palabra reservada new para crear una nueva instancia de clase
  final myHero = Hero("Deku", "One For All");
  print("${myHero.name}, ${myHero.power}");
}

class Hero {
  String name;
  String power;

  //Para inicialziar las propiedades de las clases al llamar al constructor de la clase, se usa cualquiera de estas dos sintaxis
  // Hero(this.name, this.power);

  Hero(String pName, String pPower)
      : name = pName,
        power = pPower;
}
