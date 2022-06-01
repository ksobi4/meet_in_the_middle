// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../model/user.dart';

class UserPage extends StatelessWidget {
  User user;
  UserPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text(user.avatarUrl),
        Text('${user.name} ${user.lastName}'),
        // Text(user.)
      ]),
    );
  }
}
