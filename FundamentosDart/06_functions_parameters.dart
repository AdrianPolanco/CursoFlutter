void main() {
  print(greetEveryone());
  print(byeBye());
  print(suma(2));
  print(sumaArrow(3, 3));
  print(sumaOpcional(2, 50));
}

String greetEveryone() {
  return "Hello everyone";
}

//Las funciones flecha en dart tienen la siguiente sintaxis:
//DataType NameFunction() => Valor a retornar
//OJO: En Dart las funciones flechas no pueden tener un cuerpo elaborado como pasa con las funciones flecha en JavaScript, en Dart las funciones flechas simplemente deben devolver todo en una linea, no admiten mas desarrollo de la funcion, si queremos desarrollar la funcion deberemos escribir la funcion con sintaxis tradicional
String byeBye() => "Bye bye";
int sumaArrow(int a, int b) => a + b;

//Esta es la mejor manera para asignar un parametro opcional a una funcion, usamos los corchetes y especificamos el valor al que sera igual por defecto, asi, si al llamar la funcion no usamos segundo parametro, asumira que el segundo parametro es igual a 20, pero si usamos segundo parametro, ese segundo parametro sera igual al valor que le pasamos
int suma(int a, [int b = 20]) {
  return a + b;
}

//Esta es la otra forma de usar un parametro opcional en Dart, usamos corchetes tambien, y hacemos el valor nulleable
int sumaOpcional(int a, [int? b]) {
  //Estas son formas de verificar si el valor es nulo o no, en caso de que el valor sea nulo, le asignamos valor de 0
  //b = b?? 0;
  b ??= 0;
  return a + b;
}
