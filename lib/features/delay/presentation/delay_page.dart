import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitm4/features/delay/bloc/events_delay_bloc.dart';
import 'package:mitm4/features/delay/bloc/states_delay_bloc.dart';
import 'package:mitm4/features/delay/presentation/customDelayCard.dart';
import 'package:mitm4/features/delay/service/delay_service.dart';

import '../../../core/get_it.dart';
import '../../home/presentation/widgets/input/custom_text_field.dart';
import '../bloc/delay_bloc.dart';

class DelayPage extends StatefulWidget {
  const DelayPage({Key? key}) : super(key: key);

  @override
  State<DelayPage> createState() => _DelayPageState();
}

class _DelayPageState extends State<DelayPage> {
  String searchStation = 'Bydgoszcz Glowna';
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider.value(
          value: sl<DelayBloc>(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                      label: 'Wprowadź stacje',
                      onDataChange: (value) {
                        searchStation = value;
                      }),
                  TextButton(
                    onPressed: () {
                      sl<DelayBloc>().add(LoadDelaysForStationEvent(
                          stationName: searchStation));
                      //context.read<DelayBloc>().add(LoadDelaysForStationEvent(
                      //    stationName: searchStation));
                    },
                    child: Text('Sprawdź opóźnienia dla stacji'),
                  )
                ],
              ),
              BlocBuilder<DelayBloc, FetchResults?>(
                builder: (context, state) {
                  final delays = state?.delays;
                  if (delays == null) {
                    return Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                        ),
                      ),
                    );
                  }
                  return Expanded(
                    //child: Text(delays.length.toString()),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: delays.length,
                        itemBuilder: ((context, index) {
                          final delay = delays[index];
                          return CustomDelayCard(
                            delay: delay,
                          );
                        })),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
