import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitm4/features/home/presentation/widgets/custom_text_field.dart';
import 'package:mitm4/features/home/presentation/widgets/date_field.dart';
import 'package:mitm4/features/home/presentation/widgets/loaded_transfers.dart';

import '../../../core/get_it.dart';
import 'bloc/home_bloc.dart';
import 'widgets/time_field.dart';

class AddTransferPage extends StatefulWidget {
  const AddTransferPage({Key? key}) : super(key: key);

  @override
  State<AddTransferPage> createState() => _AddTransferPageState();
}

class _AddTransferPageState extends State<AddTransferPage> {
  String startStation = '';
  String endStation = '';
  String time = '';
  String date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wyszukaj połaczneia')),
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
                    sl<HomeBloc>().add(HomeEvent.searchTransfers(
                        startStation, endStation, date, time));
                  },
                  child: const Text('Wyszukaj połączenia')),
              BlocProvider<HomeBloc>.value(
                value: sl<HomeBloc>(),
                child: Builder(
                  builder: (
                    context,
                  ) {
                    return BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state is HomeStateInit) {
                          return Container();
                        } else if (state is HomeStateLoading) {
                          return const CircularProgressIndicator();
                        } else if (state is HomeStateLoaded) {
                          return LoadedTransfers(transfers: state.transfers);
                        } else if (state is HomeStateError) {
                          return const Text('Error ');
                        } else {
                          return Container();
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
