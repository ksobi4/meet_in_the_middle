// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mitm4/features/home/model/train_event.dart';

import '../../../core/get_it.dart';
import '../model/transfers.dart';
import '../model/user.dart';
import 'train_events_bloc/train_events_bloc.dart';
import 'train_members_bloc/train_members_bloc.dart';

class TrainPage extends StatelessWidget {
  Train train;
  TrainPage({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: const Text('Pociąg')),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    '${train.carrier} ${train.trainNumber.toString()} ${train.name}',
                    style: const TextStyle(fontSize: 28),
                  ),
                  InfoDisplay(
                    train: train,
                  ),
                  EventsDisplay(train: train),
                  MembersDisplay(
                    train: train,
                  ),
                ],
              ),
            )));
  }
}

class EventsDisplay extends StatelessWidget {
  Train train;
  EventsDisplay({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: Text('event'),
      children: [
        BlocProvider.value(
          value: sl<TrainEventsBloc>()..add(TrainEventsEvent.get(train)),
          child: Builder(builder: ((context) {
            return BlocBuilder<TrainEventsBloc, TrainEventsState>(
              builder: (context, state) {
                if (state is TrainEventsLoading) {
                  return CircularProgressIndicator();
                } else if (state is TrainEventsInit) {
                  return const Text('init');
                } else if (state is TrainEventsLoaded) {
                  return EventsDisplayLoadedData(eventList: state.eventList);
                } else if (state is TrainEventsError) {
                  return Text(state.message);
                } else {
                  return const Text('=1');
                }
              },
            );
          })),
        ),
      ],
    );
  }
}

class EventsDisplayLoadedData extends StatelessWidget {
  List<TrainEvent> eventList;
  EventsDisplayLoadedData({
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
              subtitle: Text(event.author.name),
            );
          }),
          itemCount: eventList.length),
    );
  }
}

_getLeadingForEvent() {
  return Text('L');
}

class InfoDisplay extends StatelessWidget {
  Train train;
  InfoDisplay({
    Key? key,
    required this.train,
  }) : super(key: key);

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
            value: sl<TrainMembersBloc>()..add(TrainMembersEvent.get(train)),
            child: Builder(
              builder: ((context) {
                return BlocBuilder<TrainMembersBloc, TrainMembersState>(
                    builder: ((context, state) {
                  if (state is TrainMembersLoading) {
                    return CircularProgressIndicator();
                  } else if (state is TrainMembersInit) {
                    return Text('init data');
                  } else if (state is TrainMembersLoaded) {
                    if (state.userList.isEmpty) return Text('No members');
                    return MembersDisplayLoadedData(userList: state.userList);
                  } else if (state is TrainMembersError) {
                    return Text('error ${state.message}');
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
  List<User> userList;
  MembersDisplayLoadedData({
    Key? key,
    required this.userList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          itemBuilder: ((context, index) {
            User user = userList[index];
            return ListTile(
              leading:
                  CircleAvatar(foregroundImage: NetworkImage(user.avatarUrl)),
              title: Text('${user.name} ${user.lastName}'),
              onTap: () {},
            );
          }),
          itemCount: userList.length),
    );
  }
}
