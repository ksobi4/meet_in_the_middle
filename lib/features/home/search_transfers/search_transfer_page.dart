import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitm4/core/router/router.gr.dart';
import 'package:mitm4/core/widgets/loading_widget.dart';

import '../../../core/get_it.dart';
import '../blocs/transfers_bloc/transfers_bloc.dart';
import '../model/transfers.dart';
import 'widget/date_field.dart';
import 'widget/station_text_field.dart';
import 'widget/time_field.dart';

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
              StationTextField(
                  label: 'Stacja początkowa',
                  onDataChange: (value) {
                    startStation = value;
                  }),
              const SizedBox(height: 10),
              StationTextField(
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
                    context.router.push(
                      StationOutputPageRoute(
                        startStation: startStation,
                        endStation: endStation,
                        date: date,
                        time: time,
                      ),
                    );
                  },
                  child: const Text('Wyszukaj połączenia')),
            ],
          ),
        ),
      ),
    );
  }
}
