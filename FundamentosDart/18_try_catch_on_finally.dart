void main() async {
  print("Inicio del programa");
  try {
    final value = await httpGet("https://adrian.com/cursos");
    print(value);
    print("Hola");
  } on Exception catch (err) {
    //Al usar on Exception, estamos programando la reaccion que tendra nuestro codigo en caso de una excepcion, OJO, si en la promesa que programamos mas abajo NO usamos un Exception despues del throw, lo detectara como un error y por tanto entrara en el catch(err) y no en el on Exception, ya que no lo detecta como exception, por el contrario, si usamos throw Exception en la promesa, entrara en el on Exception y NO en el catch(err)
    print("Tienes una excepcion: $err");
  } catch (err) {
    print("Error: $err");
  } finally {
    print("Se acabaron los try catch");
  }
  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2), () {
    throw "Error en la peticion HTTP";
    //throw Exception("Excepcion, te jodiste");

    //return "Respuesta exitosa!"
  });
}
