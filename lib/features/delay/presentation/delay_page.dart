import 'package:flutter/material.dart';

class DelayPage extends StatefulWidget {
  const DelayPage({Key? key}) : super(key: key);

  @override
  State<DelayPage> createState() => _DelayPageState();
}

class _DelayPageState extends State<DelayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text('Delay page')],
          ),
        ),
      ),
    );
  }
}
