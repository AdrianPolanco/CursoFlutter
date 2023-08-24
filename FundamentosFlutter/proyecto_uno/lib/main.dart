import 'package:flutter/material.dart';
import "config/config.dart" show ThemeColors, DataTheme;

void main() {
  runApp(const MainApp());
}

mixin validate {
  check(String? name) {
    if (name == "" || name == null) return null;

    return name;
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My First Flutter App",
        theme: ThemeData(useMaterial3: true, primaryColor: ThemeColors.cyan),
        home: const MyFirstApp());
  }
}

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({super.key});

  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> with validate {
  final textController = TextEditingController();
  late String? _name = textController.value.text;
  late final Color _tema;
  final _formKey = GlobalKey<FormState>();
  late final FloatingActionButton _button;

  void _changeName({required String input}) {
    setState(() {
      _name = input;
    });
  }

  void _showAlert(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
    ));
  }

  void _validate() {
    if (check(_name) != null) {
      String validatedName = _name as String;
      _changeName(input: validatedName);
    } else {
      _showAlert("Porfavor, introduce tu nombre.");
    }
  }

  @override
  Widget build(BuildContext context) {
    _tema = Theme.of(context).primaryColor;
    _button = FloatingActionButton(
        onPressed: () {
          _validate();
        },
        backgroundColor: _tema);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: _tema,
              elevation: 1.1,
              title: const Text("My First Flutter App",
                  style: TextStyle(
                      color: Colors.white, fontSize: 30.1, height: 10.2))),
          body: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(_name == null ? "" : "Hola $_name"),
                  const SizedBox(width: 200, height: 100),
                  TextFormField(
                    validator: check(_name),
                    controller: textController,
                    focusNode: FocusNode(),
                    decoration: const InputDecoration(
                        hintText: "Introduce tu nombre",
                        filled: true,
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(width: 200, height: 25),
                  _button
                ],
              ))),
    );
  }
}
