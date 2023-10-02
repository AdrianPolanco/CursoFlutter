import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/widgets/additional_info.dart';
import 'package:weather_app/widgets/hourly_forecast_item.dart';

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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            SizedBox(
              width: double.maxFinite,
              //El widget Card tiene eleveacion y background por defecto
              child: Card(
                //Dandole la forma de un rectangulo con bordes circulares
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                elevation: 10,
                //Usamos ClipRRect para separar al blur del BlackdropFilter del background del Card
                child: ClipRRect(
                  //Dandole un borde
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    //Dandole un blur interno al Card, dandole 10 a los bordes verticales (sigmaX) y 10 a los bordes horizontales(sigmaY)
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "300°F",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          Text(
                            "Rain",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Con Align alineamos un widget en especifico en vez de todos los widgets hijos, como por ejemplo en el Column o Row
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Weather forecast",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            //Haciendo Row scrolleable
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                      width: 100,
                      elevation: 6,
                      hour: "03:00",
                      icon: Icons.cloud,
                      temperature: "301.45",
                      borderRadius: 12),
                  HourlyForecastItem(
                      width: 100,
                      elevation: 6,
                      hour: "03:00",
                      icon: Icons.cloud,
                      temperature: "301.45",
                      borderRadius: 12),
                  HourlyForecastItem(
                      width: 100,
                      elevation: 6,
                      hour: "03:00",
                      icon: Icons.cloud,
                      temperature: "301.45",
                      borderRadius: 12),
                  HourlyForecastItem(
                      width: 100,
                      elevation: 6,
                      hour: "03:00",
                      icon: Icons.cloud,
                      temperature: "301.45",
                      borderRadius: 12),
                  HourlyForecastItem(
                      width: 100,
                      elevation: 6,
                      hour: "03:00",
                      icon: Icons.cloud,
                      temperature: "301.45",
                      borderRadius: 12),
                  HourlyForecastItem(
                      width: 100,
                      elevation: 6,
                      hour: "03:00",
                      icon: Icons.cloud,
                      temperature: "301.45",
                      borderRadius: 12),
                  HourlyForecastItem(
                      width: 100,
                      elevation: 6,
                      hour: "03:00",
                      icon: Icons.cloud,
                      temperature: "301.45",
                      borderRadius: 12),
                  HourlyForecastItem(
                      width: 100,
                      elevation: 6,
                      hour: "03:00",
                      icon: Icons.cloud,
                      temperature: "301.45",
                      borderRadius: 12)
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("Additional information",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoItem(
                    icon: Icons.water_drop,
                    infoTitle: "Humidity",
                    numberInfo: 94),
                AdditionalInfoItem(
                    icon: Icons.air, infoTitle: "Wind speed", numberInfo: 7.67),
                AdditionalInfoItem(
                    icon: Icons.beach_access,
                    infoTitle: "Pressure",
                    numberInfo: 1006)
              ],
            )
          ],
        ),
      ),
    );
  }
}
