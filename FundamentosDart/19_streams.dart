void main() {
  //Llamamos al stream, y usamos .listen() para empezar a adquirir los datos que vienen del stream, por cada dato que venga, imprimiremos un string "Stream value" + el valor del stream actual
  emitNumbers().listen((value) {
    print("Stream value: $value");
  });
}

//Un stream es basicamente un flujo de datos, que puede tener 0 valores, 1 valor o una serie secuencial de valores, similar a las gotas de agua que salen al abrir una manguera, pueden abrirse, abrirse y no cerrarse o nunca ser abiertos
Stream<int> emitNumbers() {
  //Periodic empieza en 0, por eso estamos tomando 6, para que llegue hasta el 5, cada 1 segundo, retornara un valor
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(6);
  //Con .take() se le dice cuantos valores retornara antes de cerrar el stream
}
