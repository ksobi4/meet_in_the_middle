// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:mitm4/features/home/model/train_event.dart';
import 'package:mitm4/features/home/presentation/widgets/member.dart';

import '../../../core/theme.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: new FloatingActionButton.extended(
        backgroundColor: AppColors.accent,
        onPressed: () {},
        label: Text('Dołącz do wydarzenia'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: const Text(
                'Opis',
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
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: double.infinity, child: Text('${event.description}')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: const Text(
                'Twórca',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
          MemberWidget(
            user: event.author,
            isMarkOut: true,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: const Text(
                'Lista Uczestników',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
          MembersList(userList: event.members),
        ],
      )),
    );
  }
}