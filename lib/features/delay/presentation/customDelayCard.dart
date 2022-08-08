import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mitm4/core/theme.dart';
import 'package:mitm4/features/delay/model/delay.dart';

class CustomDelayCard extends StatelessWidget {
  final TrainDelay delay;

  const CustomDelayCard({Key? key, required this.delay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        border: Border(
            top: BorderSide(
          color: AppColors.accent,
          width: 1,
        )),
        color: AppColors.cardDark,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(delay.trainNumber),
                  // FittedBox(
                  //   child: Text(
                  //     delay.name,
                  //     overflow: TextOverflow.ellipsis,
                  //     maxLines: 1,
                  //   ),
                  // ),
                  Text(
                    delay.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(delay.endStation),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Przyjazd'),
                  Row(
                    children: [
                      Text(delay.arrivalTime),
                      Text(' (+' + delay.arrivalDelay + ')'),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Odjazd'),
                  Row(
                    children: [
                      Text(delay.leavingTime),
                      Text(' (+' + delay.leavingDelay + ')'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
