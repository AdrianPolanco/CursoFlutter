//Se pone async despues del nombre de la funcion para indicar que la funcion sera asincrona y poder usar await
void main() async {
  print("Inicio del programa");
  try {
    //Aqui el flujo de la funcion se detiene hasta que la linea que tenga el await obtenga un resultado
    final value = await httpGet("https://adrian.com/cursos");
    print(value);
  } catch (err) {
    print("Error: $err");
  }
  print("Fin del programa");
}

//Las funciones asincronas siempre seran de tipo de dato Future, y opcionalmente resolveran el tipo de dato especificado en <>
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2), () {
    throw "Error en la peticion HTTP";

    //return "Respuesta exitosa!"
  });
}
