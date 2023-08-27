import 'package:class_one/currency_converter_material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //Es lo mismo que decir
  //const MyApp({String? key}) : super(key: key)
  @override
  Widget build(BuildContext context) {
    return const CurrencyConverterMaterialPage();
  }
}
