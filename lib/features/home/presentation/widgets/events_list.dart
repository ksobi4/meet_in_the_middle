// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mitm4/core/router/router.gr.dart';
import 'package:mitm4/core/theme.dart';

import '../../model/train_event.dart';

enum EventType {
  custom,
  cards,
  chess,
  talk,
  party,
}

List<Color> eventColors = const [
  AppColors.customEventCard,
  AppColors.cardsEventCard,
  AppColors.chessEventCard,
  AppColors.talkEventCard,
  AppColors.partyEventCard,
];
List<FaIcon> eventIcons = const [
  FaIcon(FontAwesomeIcons.spaghettiMonsterFlying),
  FaIcon(FontAwesomeIcons.solidHeart),
  FaIcon(FontAwesomeIcons.chess),
  FaIcon(FontAwesomeIcons.commentDots),
  FaIcon(FontAwesomeIcons.champagneGlasses),
];

class EventsList extends StatelessWidget {
  List<TrainEvent> eventList;
  EventsList({
    Key? key,
    required this.eventList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //childAspectRatio: 3 / 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 3),
            itemBuilder: ((context, index) {
              TrainEvent event = eventList[index];
              return _EventCard(
                eventType: _eventTypeCoverter(event.eventType),
                event: event,
              );
              // return ListTile(
              //     leading: _getLeadingForEvent(),
              //     title: Text(event.title),
              //     subtitle: Text(
              //       event.author.name,
              //       style: TextStyle(color: AppColors.accent),
              //     ),
              //     onTap: (() {
              //       context.router.push(EventPageRoute(event: event));
              //     }));
            }),
            itemCount: eventList.length),
      ),
    );
  }
}

class _EventCard extends StatelessWidget {
  EventType eventType;
  TrainEvent event;
  _EventCard({
    Key? key,
    required this.eventType,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: const CircleBorder(),
      color: eventColors[eventType.index],
      child: SizedBox(
          width: 100,
          height: 100,
          child: IconButton(
              onPressed: () {
                context.router.push(EventPageRoute(event: event));
              },
              iconSize: 55,
              color: Colors.black,
              icon: eventIcons[eventType.index])),
    );
  }
}

_eventTypeCoverter(String EventTypeInString) {
  switch (EventTypeInString) {
    case 'Karty':
      return EventType.cards;
    case 'Szachy':
      return EventType.chess;
    case 'Rozmowa':
      return EventType.talk;
    case 'Impreza':
      return EventType.party;
    default:
      return EventType.custom;
  }
}
