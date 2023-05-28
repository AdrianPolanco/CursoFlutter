import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: color.secondary),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "How are u sweetie?",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        _ImageBubble(),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Context hace referencia al arbol de widgets, y entre toda esa informacion estan las dimensiones del dispositivo que este ejecutando
    //la app asi como otros tipos de caracteristicas del dispositivo
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/no/9-dc99c0e3c066b28d3a12262692cd5432.gif",
        width: size.width * 0.7,
        height: 170,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
              width: size.width * 0.7,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text("My love is writting"));
        },
      ),
    );
  }
}
