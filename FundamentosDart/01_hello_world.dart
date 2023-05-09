//Todo programa dentro de Dart empieza por una funcion main, como si fuera la funcion App en React
void main() {
  //Dart infiere el tipo de la variable al utilizar var
  //var myName = "Adrian";
  //El tipo string en Dart debe de empezar con mayuscula para que te lo detecte como tal
  //String myName = "Adrian";
  //final en Dart es basicamente una variable que solo puede establecerse o "settearse" una sola vez
  //late en Dart es basicamente una inicializacion tardia
  late final myName;
  myName = "Adrian";
  //Para pasar una variable que este usando un metodo, debe de usarse la misma sintaxis de las variables en los template string de Javascript. Si solo pasas la variable y ya las llaves no son necesarias, ejemplo: print("Hola $myName")
  print("Hola ${myName.toUpperCase()}");
}
