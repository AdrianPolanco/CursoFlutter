abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

//Creando las clases "especializadas" que introduciremos usando los mixins
abstract class Caminante {
  void caminar() => print("Caminando...");
}

//Podemos restringir a que clase o tipo de dato se puede implementar un mixin usando on despues de Mixin Nombre on Clase, ese mixin solo se podra implementar a esa clase que especificamos
mixin Volador on Ave {
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

//EN RESUMEN:

//Usamos EXTENDS cuando queremos heredar una CLASE, con todos sus miembros, metodos y sus implementaciones
//Usamos IMPLEMENTS cuando queremos "heredar" o usar una "interfaz" es decir, usar una clase abstracta la cual NO nos proporciona la implementacion, al mas puro estilo de las interfaces tradicionales en C#
// Usamos MIXINS junto con WITH para reutilizar metodos y demas cosas en las clases, sin necesidad de heredar de una clase especifica ni de establecer una jerarquia de herencia, siendo mas flexible que las dos opciones anteriores
