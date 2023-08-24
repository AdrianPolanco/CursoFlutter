void main() {
  final ferrari =
      Carro(motor: "V8", ruedas: 4, color: "Rojo", marca: "Ferrari");

  final CarroGenerico = IVehicle("V8", 4, "Rojo");
  print(ferrari.GetMarca);
}

abstract interface class IVehicle {
  IVehicle(String motor, int ruedas, String color)
      : _motor = motor,
        _ruedas = ruedas,
        _color = color;
  late final String _motor;
  late final int _ruedas;
  late final String _color;

  String Encender() {
    return "Encender motor";
  }

  int ContarRuedas();
  String get Color {
    return _motor;
  }

  String Apagar();
}

class Carro extends IVehicle {
  Carro(
      {required String motor,
      required int ruedas,
      required String color,
      String? marca})
      : _marca = marca,
        super(motor, ruedas, color);

  late final String? _marca;
  @override
  String Apagar() {
    return "Apagando";
  }

  @override
  int ContarRuedas() {
    return this._ruedas;
  }

  String? get GetMarca {
    return _marca;
  }
}
