import 'package:flutter/material.dart';

import 'home_screen.dart';

class ChatHomePage extends StatelessWidget {
  const ChatHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Messages'),
        ),
        body: const HomeScreen());
  }
}
