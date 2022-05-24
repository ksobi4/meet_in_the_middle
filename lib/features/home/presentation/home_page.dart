import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:mitm4/core/router/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String temp1 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Home page'),
              TextButton(
                onPressed: () async {
                  context.router.push(const AddTransferPageRoute());
                },
                child: const Text('Dodaj przejazd'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
