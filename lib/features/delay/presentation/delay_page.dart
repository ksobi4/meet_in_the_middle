import 'package:flutter/material.dart';
import 'package:mitm4/features/delay/service/delay_service.dart';

import '../../../core/get_it.dart';

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
            children: [
              const Text('Delay page'),
              TextButton(
                  onPressed: () {
                    DelayService ds = sl<DelayService>();
                    ds.getDelaiedTrainsForStaion('');
                  },
                  child: const Text('test btn'))
            ],
          ),
        ),
      ),
    );
  }
}
