import '14_abstract_classes_implements.dart';

void main() {
  //En Dart, no es necesario usar la palabra reservada new para crear una nueva instancia de clase
  final myHero = new Hero("Deku", "One For All");
  print("${myHero.name}, ${myHero.power}");
  final myGenericClass = new Generico<int>();
  final lista = myGenericClass.ListaGenerica(1, 2, 3, 4, 5, 6);
  print(lista);
  final check = successfulGenericClass.Success;
  if (check == successfulGenericClass.Success)
    print("Metodo ejecutado exitosamente");
}

//El typedef es una manera que tenemos para ponerle un "alias" a un tipo de dato especifico, en este caso, estamos poniendole el alias "Generico" con un solo parametro "<T>" al tipo de dato "Genericos", de manera que cuando vayamos a instanciar la clase Genericos, podemos usar este alias junto al parametro que le especificamos, tambien puede no tener ningun parametro
typedef Generico<T> = Genericos;

enum successfulGenericClass { Success, Reject }

class Hero {
  String name;
  String power;

  //Para inicialziar las propiedades de las clases al llamar al constructor de la clase, se usa cualquiera de estas dos sintaxis
  // Hero(this.name, this.power);

  Hero(String pName, String pPower)
      : name = pName,
        power = pPower;
}

//Creando clase generica
class Genericos<T> {
  late final String nombre;
  late final int edad;
  late final String pareja;

  Genericos();

//Constructor adicional en Dart
  Genericos.datos(
      {required String nombre, required int edad, required String pareja})
      : this.nombre = nombre,
        this.edad = edad,
        this.pareja = pareja;

//Devolviendo lista generica con una funcion con parametros opcionales
  List<T> ListaGenerica(T arg1, T arg2, T arg3, [T? arg4, T? arg5, T? arg6]) {
    List<T> lista = [arg1, arg2, arg3];

    arg4 != null ? lista.add(arg4) : null;
    arg5 != null ? lista.add(arg5) : null;
    arg6 != null ? lista.add(arg6) : null;

    return lista;
  }
}
