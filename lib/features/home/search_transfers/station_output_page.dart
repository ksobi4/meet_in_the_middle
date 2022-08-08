import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitm4/core/get_it.dart';
import 'package:mitm4/core/widgets/loading_widget.dart';
import 'package:mitm4/features/home/blocs/transfers_bloc/transfers_bloc.dart';
import 'package:mitm4/features/home/model/transfers.dart';
import 'package:mitm4/features/home/presentation/widgets/transfers_list.dart';

class StationOutputPage extends StatelessWidget {
  String startStation, endStation, date, time;

  StationOutputPage({
    Key? key,
    required this.startStation,
    required this.endStation,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: Column(
        children: [Text(startStation), Text(endStation)],
      )),
      body: Center(
          child: Expanded(
        child: BlocProvider<TransfersBloc>.value(
          value: sl<TransfersBloc>()
            ..add(TransfersEvent.get(startStation, endStation, date, time)),
          child: Builder(
            builder: (
              context,
            ) {
              Transfers currentTransfers;
              return BlocBuilder<TransfersBloc, TransfersState>(
                builder: (context, state) {
                  if (state is TransfersStateInit) {
                    return const Text('init');
                  } else if (state is TransfersStateLoading) {
                    return const LoadingWidgetTrain();
                  } else if (state is TransfersStateLoaded) {
                    currentTransfers = state.transfers;
                    return TransfersList(transfers: state.transfers);
                  } else if (state is TransfersStateError) {
                    return Text('Error ${state.message}');
                  } else {
                    return const Text('else');
                  }
                },
              );
            },
          ),
        ),
      )),
    ));
  }
}
