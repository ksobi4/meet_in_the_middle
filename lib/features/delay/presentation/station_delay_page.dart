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

class StationDelayPage extends StatefulWidget {
  const StationDelayPage({Key? key}) : super(key: key);

  @override
  State<StationDelayPage> createState() => _StationDelayPageState();
}

class _StationDelayPageState extends State<StationDelayPage> {
  String searchStation = 'Bydgoszcz Glowna';
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
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
                  sl<DelayBloc>().add(
                      LoadDelaysForStationEvent(stationName: searchStation));
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
                    child: Center(
                      child: Text(
                          'Brak wyników. Wpisz stajcę aby sprawdić opóźnienia'),
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
    );
  }
}
