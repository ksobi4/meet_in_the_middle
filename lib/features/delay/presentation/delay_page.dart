import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitm4/core/theme.dart';
import 'package:mitm4/features/delay/bloc/events_delay_bloc.dart';
import 'package:mitm4/features/delay/bloc/states_delay_bloc.dart';
import 'package:mitm4/features/delay/presentation/customDelayCard.dart';
import 'package:mitm4/features/delay/presentation/customToggleButton.dart';
import 'package:mitm4/features/delay/presentation/station_delay_page.dart';
import 'package:mitm4/features/delay/presentation/transfer_delay_page.dart';
import 'package:mitm4/features/delay/service/delay_service.dart';

import '../../../core/get_it.dart';
import '../../home/presentation/widgets/input/custom_text_field.dart';
import '../bloc/delay_bloc.dart';
>>>>>>> delayBranch

class DelayPage extends StatefulWidget {
  const DelayPage({Key? key}) : super(key: key);

  @override
  State<DelayPage> createState() => _DelayPageState();
}

class _DelayPageState extends State<DelayPage> {
  List<bool> _selections = List.generate(2, (_) => false);
  String searchStation = 'Bydgoszcz Glowna';
  int pageIndex = 0;
  final pages = [
    const StationDelayPage(),
    const TransferDelayPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(child: CustomToggleButton(onTap1: (index) {
              if (index == 0) {
                setState(() {
                  pageIndex = 0;
                });
              } else {
                setState(() {
                  pageIndex = 1;
                });
              }
            })),
          ),
          Expanded(child: pages[pageIndex]),
        ],
      )),
    );
  }
}
