//Se pone async despues del nombre de la funcion para indicar que la funcion sera asincrona y poder usar await
void main() {
  print("Inicio del programa");
  try {
    //Aqui el flujo de la funcion se detiene hasta que la linea que tenga el await obtenga un resultado
    Future<String> value = cadena();
    print(value);
    print("Imprimiendo");
  } catch (err) {
    print("Error: $err");
  }
  print("Fin del programa");
}

Future<String> FuncionAsincrona() async {
  final value = await httpGet("https://adrian.com/cursos");
  return value;
}

Future<String> cadena() async {
  final value = await FuncionAsincrona();
  String valor = value as String;
  return valor;
}

//Las funciones asincronas siempre seran de tipo de dato Future, y opcionalmente resolveran el tipo de dato especificado en <>
Future<String> httpGet(String url) async {
  return await Future.delayed(const Duration(seconds: 2), () {
    return "Error en la peticion HTTP";

    //return "Respuesta exitosa!"
  });
}
