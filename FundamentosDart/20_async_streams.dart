void main() {
  emitNumbers().listen((int value) {
    print("Stream value: $value");
  });
}

//Async* sirve basicamente para poder hacer asincronos los Streams, ya que los async normales siempre son de tipo Future
Stream<int> emitNumbers() async* {
//Lista en Dart
  final valuesToEmit = [1, 2, 3, 4, 5];

//Bucle for en Dart
  for (int i in valuesToEmit) {
    await Stream.periodic(const Duration(seconds: 1));
    //Usamos yield ya que en un Stream, no retornamos valores sino que los "cedemos", basicamente le estamos dando al cliente un valor ahora, y despues otro valor
    yield i;
  }
}
