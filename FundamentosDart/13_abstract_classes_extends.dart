void main() {
  final myWind = WindPlant(initialEnergy: 0);
  print(chargePhone(myWind));
}

enum PlantType { nuclear, wind, water }

//Creando una funcion que reciba una instancia de EnergyPlant como objeto, aunque realmente mas arriba le pasamos una instancia de WindPlant, igual funciona ya que WindPlant hereda de EnergyPlant
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception("Not enough powa");
  }

  return plant.energyLeft - 10;
}

//Creando una clase abstracta en Dart
abstract class EnergyPlant {
  double energyLeft;

  PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  //Heredando de una clase abstracta en Dart
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

//Implementando y/o sobreescribiendo un metodo de la clase abstracta en Dart
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
