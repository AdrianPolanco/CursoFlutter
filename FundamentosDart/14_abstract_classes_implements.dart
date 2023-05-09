void main() {
  final myWind = WindPlant(initialEnergy: 100);
  final myNuclear = NuclearPlant(energyLeft: 1000);
  print(chargePhone(myWind));
  print(chargePhone(myNuclear));
}

enum PlantType { nuclear, wind, water }

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception("Not enough powa");
  }

  return plant.energyLeft - 10;
}

abstract class EnergyPlant {
  double energyLeft;

  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

//Implements cumple una funcion de herencia de manera similar a extends, solo que en implements solo heredas la parte que necesites de la clase padre y no todo como en EXTENDS
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
