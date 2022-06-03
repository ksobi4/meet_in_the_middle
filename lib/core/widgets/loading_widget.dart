import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoadingWidgetTrain extends StatelessWidget {
  const LoadingWidgetTrain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/cos.gif", height: 250, width: 250);
  }
}
