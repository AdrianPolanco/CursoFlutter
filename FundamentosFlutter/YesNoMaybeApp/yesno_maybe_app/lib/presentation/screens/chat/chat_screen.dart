import 'package:flutter/material.dart';
import 'package:yesno_maybe_app/config/theme/theme.dart';
import 'package:yesno_maybe_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yesno_maybe_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yesno_maybe_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.sabinopaciolla.com/wp-content/uploads/2020/01/Eva-Vlaardingerbroek-1.jpg"),
          ),
        ),
        title: const Text("My love ♥"),
        backgroundColor: color.primary,
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SafeArea es un widget el cual dejara un "area segura" es decir, una area que no choque con los tres botones principales del celular
    return SafeArea(
      //Padding es un widget que añade padding a su wudget hijo a traves del parametro padding
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            //Expanded es un widget el cual tomaria todo el espacio disponible, ideal para hacer chats, por ejemplo
            Expanded(
              //ListView,builder  sirve basicamente para agrupar (en este caso, verticalmente)  un grupo de widget y hacer que sea scrolleable como
              //los chats
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) => (index % 2 == 0)
                    ? const MyMessageBubble()
                    : const HerMessageBubble(),
              ),
            ),
            MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
