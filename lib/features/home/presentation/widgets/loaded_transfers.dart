// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:mitm4/core/router/router.gr.dart';

import '../../model/transfers.dart';

class LoadedTransfers extends StatelessWidget {
  Transfers transfers;
  LoadedTransfers({
    Key? key,
    required this.transfers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: transfers.transfers.length,
          itemBuilder: ((context, index) {
            return OneTransferWidget(transfer: transfers.transfers[index]);
          })),
    );
  }
}

class OneTransferWidget extends StatelessWidget {
  Transfer transfer;
  OneTransferWidget({
    Key? key,
    required this.transfer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: ExpansionTileCard(
          contentPadding: EdgeInsets.symmetric(horizontal: 4),
          // trailing: SizedBox(),
          title: ExpandionListTitle(
            transfer: transfer,
          ),
          expandedColor: Colors.grey[300],
          children: [ExnandedTaileBody(transfer: transfer)],
        ));
  }
}

class ExnandedTaileBody extends StatelessWidget {
  Transfer transfer;
  ExnandedTaileBody({
    Key? key,
    required this.transfer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];

    for (var train in transfer.trains) {
      list.add(ExpandedTileOneTrain(
        train: train,
      ));
    }
    return Column(children: list);
  }
}

class ExpandedTileOneTrain extends StatelessWidget {
  Train train;
  ExpandedTileOneTrain({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                _generateCarrierImage(train.carrier),
                Text(train.number),
                Text(train.name == '' ? '-=-' : train.name)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 80, child: Text(train.startStation)),
                Text(train.startTime)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 80, child: Text(train.endStation)),
                Text(train.endTime)
              ],
            ),
            Text(train.distance),
            TextButton(
                onPressed: () {
                  _onPressedMoreBtn(context, train);
                },
                child: const Text('Więcej'))
          ],
        ),
      ),
    );
  }

  void _onPressedMoreBtn(BuildContext context, train) {
    context.router.push(TrainDetailsPageRoute(train: train));
  }
}

class ExpandionListTitle extends StatelessWidget {
  Transfer transfer;
  ExpandionListTitle({
    Key? key,
    required this.transfer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StationTextWidget(
            station: transfer.trains[0].startStation,
            time: transfer.trains[0].startTime),
        _generate(transfer),
        StationTextWidget(
            station: transfer.trains[transfer.trains.length - 1].endStation,
            time: transfer.trains[transfer.trains.length - 1].endTime)
      ],
    );
  }
}

class StationTextWidget extends StatelessWidget {
  String station;
  String time;

  StationTextWidget({
    Key? key,
    required this.station,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(station, style: TextStyle(fontSize: 14)),
            Text(
              time,
              style: TextStyle(color: Colors.red[600], fontSize: 13),
            )
          ],
        ));
  }
}

Row _generate(Transfer trs) {
  String imgUrl = 'https://via.placeholder.com/150C';

  List<Widget> list = [];
  for (var el in trs.trains) {
    list.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          _generateCarrierImage(el.carrier),
          Text(el.number),
        ],
      ),
    ));
  }

  return Row(children: list);
}

_generateCarrierImage(String carrier) {
  return Card(
    // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
    color: Colors.amber,
    child: SizedBox(height: 20, width: 40, child: Center(child: Text(carrier))),
  );
}