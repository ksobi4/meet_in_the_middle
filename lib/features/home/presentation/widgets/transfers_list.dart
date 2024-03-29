// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

import 'package:mitm4/core/router/router.gr.dart';
import 'package:mitm4/core/theme.dart';

import '../../model/transfers.dart';

class TransfersList extends StatelessWidget {
  Transfers transfers;
  TransfersList({
    Key? key,
    required this.transfers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Transfer> temp = transfers.transfers;
    // for (Transfer trans in temp) {
    //   if (trans.trains.length > 3) {
    //     transfers.transfers.remove(trans);
    //   }
    // }
    return ListView.builder(
        itemCount: transfers.transfers.length,
        itemBuilder: ((context, index) {
          return OneTransferWidget(transfer: transfers.transfers[index]);
        }));
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
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
        child: ExpansionTileCard(
          contentPadding: const EdgeInsets.all(4),
          // trailing: SizedBox(),
          title: ExpandionTaileTitle(
            transfer: transfer,
          ),
          //expandedColor: Colors.grey[800],
          baseColor: Color.fromARGB(255, 46, 68, 85),
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
      list.add(OneTrain(
        train: train,
        isHome: false,
        reloadFunction: () {},
      ));
    }
    return Column(children: list);
  }
}

class OneTrain extends StatelessWidget {
  Train train;
  bool isHome;
  final VoidCallback reloadFunction;
  OneTrain({
    Key? key,
    required this.train,
    required this.isHome,
    required this.reloadFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isHome ? AppColors.darkNavBarBg : AppColors.darkSmallTile,
      child: SizedBox(
        height: 62,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _generateCarrierImage(train.carrier),
                Text(
                  train.trainNumber,
                  textAlign: TextAlign.center,
                ),
                // Text(
                //   train.name == '' ? '-=-' : train.name,
                //   textAlign: TextAlign.center,
                // )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 80,
                    child: Text(
                      train.startStation,
                      textAlign: TextAlign.center,
                    )),
                Text(
                  train.startTime,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 80,
                    child: Text(
                      train.endStation,
                      textAlign: TextAlign.center,
                    )),
                Text(
                  train.endTime,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Text(
              train.distance,
              textAlign: TextAlign.center,
            ),
            TextButton(
                onPressed: () {
                  _onPressedMoreBtn(context, train);
                },
                child: const Text(
                  'Więcej',
                  style: TextStyle(color: AppColors.accent),
                ))
          ],
        ),
      ),
    );
  }

  void _onPressedMoreBtn(BuildContext context, train) {
    context.router.push(TrainPageRoute(train: train)).then((value) {
      reloadFunction();
    });
  }
}

class ExpandionTaileTitle extends StatelessWidget {
  Transfer transfer;
  ExpandionTaileTitle({
    Key? key,
    required this.transfer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StationDisplayInTitle(
            station: transfer.trains[0].startStation,
            time: transfer.trains[0].startTime),
        _generateTransfer(transfer),
        StationDisplayInTitle(
            station: transfer.trains[transfer.trains.length - 1].endStation,
            time: transfer.trains[transfer.trains.length - 1].endTime)
      ],
    );
  }
}

class StationDisplayInTitle extends StatelessWidget {
  String station;
  String time;

  StationDisplayInTitle({
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
            Text(station,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14)),
            Text(
              time,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red[600], fontSize: 13),
            )
          ],
        ));
  }
}

Row _generateTransfer(Transfer trs) {
  List<Widget> list = [];
  for (var el in trs.trains) {
    list.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          _generateCarrierImage(el.carrier),
          Text(
            el.trainNumber,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ));
  }

  if (list.length > 3) {
    list = [
      Text('Ponad 3 pociągi'),
    ];
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
