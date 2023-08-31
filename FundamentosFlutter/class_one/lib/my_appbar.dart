import 'package:flutter/material.dart';

class MyGradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _height;
  final String _title;
  final LinearGradient _gradient;

  const MyGradientAppBar(
      {super.key,
      double height = 56,
      required String title,
      required LinearGradient gradient})
      : _height = height,
        _title = title,
        _gradient = gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: _height + MediaQuery.of(context).padding.top,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: BoxDecoration(gradient: _gradient, boxShadow: const [
          BoxShadow(color: Color.fromARGB(255, 71, 71, 71), offset: Offset.zero)
        ]),
        child: Center(
            child: Text(
          _title,
          style: const TextStyle(
              color: Color.fromARGB(255, 230, 245, 253),
              fontSize: 45,
              fontWeight: FontWeight.bold),
        )));
  }

  @override
  Size get preferredSize => Size.fromHeight(_height);
}
