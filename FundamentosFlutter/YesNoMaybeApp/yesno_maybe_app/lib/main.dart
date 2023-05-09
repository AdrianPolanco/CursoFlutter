import 'package:flutter/material.dart';
import 'package:yesno_maybe_app/config/theme/theme.dart';
import 'package:yesno_maybe_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 9, brit: Brightness.light).theme(),
      home: const ChatScreen(),
    );
  }
}
