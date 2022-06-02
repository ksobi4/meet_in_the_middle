// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mitm4/core/router/router.gr.dart';
import 'package:mitm4/core/theme.dart';

import '../../model/train_event.dart';

class EventsList extends StatelessWidget {
  List<TrainEvent> eventList;
  EventsList({
    Key? key,
    required this.eventList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemBuilder: ((context, index) {
            TrainEvent event = eventList[index];
            return ListTile(
                leading: _getLeadingForEvent(),
                title: Text(event.title),
                subtitle: Text(
                  event.author.name,
                  style: TextStyle(color: AppColors.accent),
                ),
                onTap: (() {
                  context.router.push(EventPageRoute(event: event));
                }));
          }),
          itemCount: eventList.length),
    );
  }
}

_getLeadingForEvent() {
  return const Text('L');
}
