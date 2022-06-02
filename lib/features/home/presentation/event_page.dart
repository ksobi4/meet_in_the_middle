// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:mitm4/features/home/model/train_event.dart';
import 'package:mitm4/features/home/presentation/widgets/member.dart';

import '../../../core/get_it.dart';
import '../model/transfers.dart';
import '../service/home_service.dart';
import 'widgets/members_list.dart';

class EventPage extends StatelessWidget {
  TrainEvent event;
  EventPage({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(event.title)),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text(
            'Opis \n ${event.description}',
          ),
          MemberWidget(
            user: event.author,
            isMarkOut: true,
          ),
          const Text('Lista członków'),
          MembersList(userList: event.members),
          TextButton(onPressed: _onPress, child: const Text('usuń'))
        ],
      )),
    );
  }

  void _onPress() {
    User? user = FirebaseAuth.instance.currentUser;
    HomeService hs = sl<HomeService>();
    if (user != null) {
      hs.deleteEvent(user.uid, event);
    } else {
      log('user == null');
    }
  }
}
