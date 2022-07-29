import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/get_it.dart';
import '../../home/presentation/widgets/input/custom_text_field.dart';
import '../bloc/delay_bloc.dart';
import '../bloc/events_delay_bloc.dart';
import '../bloc/states_delay_bloc.dart';
import 'customDelayCard.dart';

class TransferDelayPage extends StatefulWidget {
  const TransferDelayPage({Key? key}) : super(key: key);

  @override
  State<TransferDelayPage> createState() => _TransferDelayPageState();
}

class _TransferDelayPageState extends State<TransferDelayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: const Text('TranferDelayPage')),
        ],
      ),
    );
  }
}
