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
        Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage(user.avatarUrl),
                backgroundColor: Colors.transparent,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('${user.name} ${user.lastName}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Kim jestem?',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child:
                    SizedBox(width: double.infinity, child: Text('User Opis')),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Zainteresowania',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                    width: double.infinity,
                    child: Text('User Zainteresowania')),
              )
            ],
          ),
        ),
        // Text(user.)
      ]),
    );
  }
}
