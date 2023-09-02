mixin CalculateMixin {
  double fromPesoToDollar(pesosAmount, dollarsAmount) {
    return double.parse((double.parse(pesosAmount) / 56.62).toStringAsFixed(2));
  }
}
