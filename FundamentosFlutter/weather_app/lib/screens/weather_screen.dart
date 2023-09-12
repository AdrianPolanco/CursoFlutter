import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreen();
}

class _WeatherScreen extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          /*GestureDetector(
              onTap: () {
                print("Refrescando....");
              },*/
          IconButton(
            onPressed: () {
              print("Refrescando....");
            },
            icon: Icon(Icons.refresh),
            padding: const EdgeInsets.all(16),
          )
          //)
        ],
      ),
      body: const Column(
        children: [
          Placeholder(
            fallbackHeight: 250,
          ),
          SizedBox(
            height: 20,
          ),
          Placeholder(
            fallbackHeight: 150,
          ),
          SizedBox(
            height: 10,
          ),
          Placeholder(
            fallbackHeight: 150,
          )
        ],
      ),
    );
  }
}
