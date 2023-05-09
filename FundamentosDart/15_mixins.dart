abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

//Creando las clases "especializadas" que introduciremos usando los mixins
abstract class Caminante {
  void caminar() => print("Caminando...");
}

abstract class Volador {
  void volar() => print("Volando...");
}

abstract class Nadador {
  void nadar() => print("Nadando...");
}

class Delfin extends Mamifero with Nadador {}

//Implementamos las clases con mixins usando la palabra reservada "with" y despues las clases o "especializaciones" que queremos implementar. Los mixins nos permiten basicamente poder heredar de varias clases, o en otras palabras, tomas exactamente una o mas especializaciones sin tener que poner todo en, por ejemplo, la superclase Animal o la superclase Ave, ya que por ejemplo hay Aves que no vuelan y solo caminan, y Aves que caminan, vuelan y nadan como los patos
class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador {}

class Pato extends Ave with Nadador, Volador, Caminante {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();
}
