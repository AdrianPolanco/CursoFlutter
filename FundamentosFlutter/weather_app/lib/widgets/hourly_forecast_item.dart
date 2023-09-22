import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final double _width;
  final double _elevation;
  final String _hour;
  final double _borderRadius;
  final IconData _icon;
  final String _temperature;

  const HourlyForecastItem(
      {required double width,
      required double elevation,
      required String hour,
      required IconData icon,
      required String temperature,
      required double borderRadius,
      super.key})
      : _width = width,
        _elevation = elevation,
        _hour = hour,
        _icon = icon,
        _temperature = temperature,
        _borderRadius = borderRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: _elevation,
        child: Container(
          width: _width,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(_borderRadius))),
          child: Column(
            children: [
              Text(
                _hour,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Icon(
                _icon,
                size: 32,
              ),
              const SizedBox(height: 8),
              Text(_temperature)
            ],
          ),
        ));
  }
}
