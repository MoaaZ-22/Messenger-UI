import 'package:flutter/material.dart';
import 'package:messenger_app/modules/MessengerApp/messenger_screen.dart';

void main() {
  runApp(const MessengerApp());
}

class MessengerApp extends StatelessWidget {
  const MessengerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen(),
    );
  }
}


