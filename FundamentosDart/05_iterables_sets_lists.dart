void main() {
  //Lista en Dart, en ella, se pueden repetir valores
  final numbers = [0, 1, 2, 3, 4, 5, 6, 7, 7, 7, 8, 9, 10];
  //Se puede usar .reversed para invertir el orden de los datos almacenados en la lista, algo a tener en cuenta es que al usar esta propiedad, no devolvera una lista con los valores invertidos sino un ITERABLE con los valores invertidos. En los SETS no se admite repeticion de valores
  final reversedNumbers = numbers.reversed;
  //Aqui estamos filtrando los items de la lista number por los que sean igual o mayor a 5, por lo que devolvera un ITERABLE con los valores que cumplan esa condicion, seguido de esto, lo convertimos a un Set con .toSet()
  final GreaterThanFive = numbers.where((num) {
    return num >= 5;
  }).toSet();

  //.length devuelve cuantos items hay en la lista
  print(numbers.length);
  //.first devuelve el primer item en la lista y .last el ultimo
  print(numbers.first);
  print(numbers.last);
  print(reversedNumbers);
  //Podemos identificar un iterable por los parentesis(), estos se diferencian de las listas en que no admiten valores repetidoss
  print("From Iterable to List: ${reversedNumbers.toList()}");
  //Podemos identificar a un set por las llaves {} similar a los maps, solo que aqui no esta el patron KeyValue, sino que es solo un valor por item, como en las listas, los Sets tampoco admiten valores repetidos
  print("From Iterable to Set: ${reversedNumbers.toSet()}");
  print(GreaterThanFive);
}
