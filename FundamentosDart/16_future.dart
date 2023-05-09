void main() {
  print("Inicio del programa");

  httpGet("https://adrian.com/cursos").then((value) {
    print(value);
  }).catchError((err) {
    print("Error: $err");
  });
  print("Fin del programa");
}

//Creando una "promesa" que se retrasara por dos segundos, por tanto, aunque el HttpGet este antes del print "Fin del programa" aparecera despues de este ya que este es codigo asincrono mientras que el print "Fin del programa" es sincrono
Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    throw "Error en la peticion HTTP";

    //return "Respuesta exitosa!"
  });
}
