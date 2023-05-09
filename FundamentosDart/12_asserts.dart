void main() {
  final mySquare = Square(side: -5);
  print(mySquare.area);
  mySquare.side = -10;
  print(mySquare.area);
}

class Square {
  double _side;

//Un assert en Dart es basicamente una manera que tenemos para asegurarnos de que por ejemplo un parametro en especifico, cumpla ciertas condiciones, en el ejemplo de abajo, especificamos que el parametro side del constructor de la clase Square debe de ser igual o mayor a 0 para que se pueda inicializar la propiedad de la clase, de lo contrario, arrojara un error con el mensaje que especificamos como segundo parametro
  Square({required side})
      : assert(side >= 0, "This number must be equal or greater than 0."),
        this._side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print("Setting the value....");
    if (value < 0) throw "Value must be equal or greater than zero.";
    _side = value;
    print("Value set successfully: $_side");
  }

  double calculateArea() {
    return _side * _side;
  }
}
