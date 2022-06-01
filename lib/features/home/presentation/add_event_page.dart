import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../model/transfers.dart';

class AddEventPage extends StatelessWidget {
  Train train;
  AddEventPage({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return Text('aa');
    }

    return Container();
  }
}
