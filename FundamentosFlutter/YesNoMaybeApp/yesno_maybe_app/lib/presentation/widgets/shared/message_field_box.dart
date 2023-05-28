import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    //Funcion para tener control sobre el input al que se asocie, en este caso nuestro input del chat
    final textController = TextEditingController();
    //Funcion para modificar el comportamiento del foco
    final focusNode = FocusNode();

//Funcion para modificar algunos aspectos del input
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

//Funcion para habilitar la decoracion del input
    final inputDecoration = InputDecoration(
      //Placeholder
      hintText: 'End your message with "?"',

      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      //Llena el input de color
      filled: true,
      //Poniendole un boton con Icono para que reaccione al ser presionado (IconButton)
      suffixIcon: IconButton(
          onPressed: () {
            //Al este IconButton estar dentro del InputDecoration y este, a su vez del input en si (TextFormField) al parecer el textController se asocio a este
            final textValue = textController.value.text;
            print("Pressed: $textValue");
            textController.clear();
          },
          //Icono del IconButton
          icon: const Icon(Icons.send_outlined)),
    );

    return TextFormField(
      //Evento que se producira al usuario dar click fuera del input, en el cual, programamos que entonces, se quite el foco del input
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("Value: $value");
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
