//Una DIFERENCIA CLAVE entre EXTENDS e IMPLEMENTS es que con EXTENDS heredas la clase en el sentido tradicional, junto a absolutamente todos sus miembros, publicos y privados, y en el caso de EXTENDS no estamos obligados a sobreescribir esos miembros usando @override. Mientras que IMPLEMENTS se usa para implementar interfaces (o mejor dicho clases abstractas ya que en Dart no hay interfaces explicitas como en C#), y aqui si estamos obligados a implementar los miembros publicos de tal clase usando @override, ya que usando IMPLEMENTS NO tenemos acceso a los miembros privados de dicha clase abstracta

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
