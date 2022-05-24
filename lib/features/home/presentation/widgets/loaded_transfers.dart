import 'package:flutter/material.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Card(
          color: Colors.white70,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: _generate(transfer))),
        ));
  }
}

List<Widget> _generate(Transfer trs) {
  String imgUrl = 'https://via.placeholder.com/150C';

  List<Widget> list = [];
  trs.trains.forEach((el) {
    list.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          _generateCarrierImage(el.carrier),
          Text('${el.startStation} - ${el.startTime}'),
          Text('${el.endStation} - ${el.endTime}'),
        ],
      ),
    ));
  });

  return list;
}

_generateCarrierImage(String carrier) {
  return Card(
    // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
    color: Colors.amber,
    child:
        Container(height: 20, width: 40, child: Center(child: Text(carrier))),
  );
}
