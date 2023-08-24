import 'package:flutter/material.dart';

class ThemeColors {
  static Color teal = Colors.teal.shade200;
  static Color orange = Colors.orange.shade400;
  static Color lime = Colors.limeAccent.shade400;
  static Color red = Colors.red;
  static Color cyan = Colors.cyanAccent.shade400;
  static Color indigo = Colors.indigoAccent.shade400;
  static Color purple = Colors.purpleAccent;
}

class DataTheme {
  static ThemeData data = ThemeData(primaryColor: ThemeColors.cyan);
}
