void main() {
  //Pasandole parametros con nombre a la funcion, en Dart, en lugar de usar = para esto, se usa :
  print(greetPerson(name: "Adrian", message: "Soy"));
}

//Al usar las llaves en los parametros de la funcion, automaticamente se vuelven opecionales
//Aqui si podemos usar = para definir a que valor sera igual el parametro por defecto
//Al usar required antes de declarar un parametro, obligamos a que se tenga que especificar el valor del parametro
String greetPerson({required String name, String message = "Hola, "}) {
  return "$message $name";
}
