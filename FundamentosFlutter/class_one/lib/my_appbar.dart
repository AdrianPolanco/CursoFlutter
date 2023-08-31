import 'package:flutter/material.dart';

class MyGradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _height;
  final String _title;
  final LinearGradient _gradient;
  final List<Widget>? _actions;
  const MyGradientAppBar(
      {super.key,
      double height = 56,
      List<Widget>? actions,
      required String title,
      required LinearGradient gradient})
      : _height = height,
        _title = title,
        _gradient = gradient,
        _actions = actions;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: _height + MediaQuery.of(context).padding.top,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: BoxDecoration(gradient: _gradient, boxShadow: const [
          BoxShadow(color: Color.fromARGB(255, 71, 71, 71), offset: Offset.zero)
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              _title,
              style: const TextStyle(
                  color: Color.fromARGB(255, 230, 245, 253),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )),
            Container(
              margin: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  for (Widget action in _actions!)
                    Container(
                        margin: const EdgeInsets.only(left: 20), child: action)
                ],
              ),
            )
          ],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(_height);
}
