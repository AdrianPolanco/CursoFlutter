void main() {
  final mySquare = Square(side: 5);
  print(mySquare.area);
  //Llamando a un setter en Dart
  mySquare.side = 10;
  print(mySquare.area);
}

class Square {
  //Encapsulando una propiedad en Dart, simplemente utilizamos _ antes del nombre de la propiedad
  double _side;

//Constructor
  Square({required side}) : this._side = side;

//Usando un getter en Dart, despues de especificar el tipo de dato que tendra la propiedad, usamos la palabra reservada get y despues el nombre de la propiedad, y usamos un return para devolver la informacion
  double get area {
    return _side * _side;
  }

//Usamos la palabra reservada set para establecer un setter en Dart, le damos un nombre, y como si fuera una funcion, usamos parentesis en donde pondremos los parametros que se vayan a usar
  set side(double value) {
    print("Setting the value....");
    //Lanzando una excepcion en Dart
    if (value < 0) throw "Value must be equal or greater than zero.";
    _side = value;
    print("Value set successfully: $_side");
  }

//Metodo en Dart
  double calculateArea() {
    return _side * _side;
  }
}
