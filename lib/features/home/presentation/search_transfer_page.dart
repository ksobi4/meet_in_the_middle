import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/get_it.dart';
import '../model/transfers.dart';

import 'transfers_bloc/transfers_bloc.dart';
import 'widgets/input/custom_text_field.dart';
import 'widgets/input/date_field.dart';
import 'widgets/input/time_field.dart';
import 'widgets/transfers_list.dart';

// ignore: must_be_immutable
class SearchTransfersPage extends StatelessWidget {
  Transfers? currentTransfers;
  String startStation = 'Bydgoszcz Glowna';
  String endStation = 'Warszawa Centralna';
  String time = '10:00';
  String date = '25.06.2022';

  SearchTransfersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wyszukaj połaczneia')),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              CustomTextField(
                  label: 'Stacja początkowa',
                  onDataChange: (value) {
                    startStation = value;
                  }),
              const SizedBox(height: 10),
              CustomTextField(
                  label: 'Stacja końcowa',
                  onDataChange: (value) {
                    endStation = value;
                  }),
              const SizedBox(height: 10),
              TimeField(onDataChange: (value) {
                time = value;
              }),
              const SizedBox(height: 10),
              DateField(onDataChange: (value) {
                date = value;
              }),
              TextButton(
                  onPressed: () async {
                    _callBlocEvent(
                        context, startStation, endStation, date, time);
                  },
                  child: const Text('Wyszukaj połączenia')),
              BlocProvider<TransfersBloc>.value(
                value: sl<TransfersBloc>(),
                child: Builder(
                  builder: (
                    context,
                  ) {
                    return BlocBuilder<TransfersBloc, TransfersState>(
                      builder: (context, state) {
                        if (state is TransfersStateInit) {
                          return const Text('init');
                        } else if (state is TransfersStateLoading) {
                          return const CircularProgressIndicator();
                        } else if (state is TransfersStateLoaded) {
                          currentTransfers = state.transfers;
                          return TransfersList(transfers: state.transfers);
                        } else if (state is TransfersStateError) {
                          return Text('Error ${state.message}');
                        } else {
                          if (currentTransfers == null) {
                            return const Text('else');
                          } else {
                            return TransfersList(transfers: currentTransfers!);
                          }
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _callBlocEvent(BuildContext context, String startStation,
    String endStation, String date, String time) {
  sl<TransfersBloc>()
      .add(TransfersEvent.get(startStation, endStation, date, time));
}
