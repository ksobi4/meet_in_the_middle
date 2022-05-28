// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mitm4/features/home/presentation/bloc/home_bloc.dart';

import '../../../core/get_it.dart';
import '../model/transfers.dart';

class TrainDetailsPage extends StatelessWidget {
  Train train;
  TrainDetailsPage({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: const Text('Pociąg')),
            body: Center(
              child: Column(
                children: [
                  Text(
                    '${train.carrier} ${train.number} ${train.name}',
                    style: const TextStyle(fontSize: 28),
                  ),
                  InfoDisplay(),
                  EventsDisplay(),
                  MembersDisplay(
                    train: train,
                  ),
                ],
              ),
            )));
  }
}

class EventsDisplay extends StatelessWidget {
  const EventsDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('event'),
      children: [Text('events 2')],
    );
  }
}

class InfoDisplay extends StatelessWidget {
  const InfoDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('info'),
      children: [Text('info 2')],
    );
  }
}

class MembersDisplay extends StatelessWidget {
  Train train;
  MembersDisplay({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: Text('members'),
      children: [
        BlocProvider.value(
            value: sl<HomeBloc>()..add(HomeEvent.getEventsAndMembers(train)),
            child: Builder(
              builder: ((context) {
                return BlocBuilder<HomeBloc, HomeState>(
                    builder: ((context, state) {
                  if (state is HomeStateLoadingGetEventsAndMembers) {
                    return CircularProgressIndicator();
                  } else if (state is HomeStateInitGetEventsAndMembers) {
                    return Text('init data');
                  } else if (state is HomeStateLoadedGetEventsAndMembers) {
                    return MembersDisplayLoadedData();
                  } else {
                    return const Text('nic');
                  }
                }));
              }),
            )),
      ],
    );
  }
}

class MembersDisplayLoadedData extends StatelessWidget {
  const MembersDisplayLoadedData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('done dojebane');
  }
}
