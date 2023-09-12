import 'package:flutter/material.dart';

import 'screens/weather_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true)
          .copyWith(appBarTheme: const AppBarTheme(/* color: Colors.red */)),
      home: const WeatherScreen(),
    );
  }
}
