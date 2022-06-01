// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mitm4/features/home/presentation/widgets/events_list.dart';
import 'package:mitm4/features/home/presentation/widgets/members_list.dart';

import '../../../core/errors/failure.dart';
import '../../../core/get_it.dart';
import '../model/transfers.dart';
import '../service/home_service.dart';
import 'train_events_bloc/train_events_bloc.dart';
import 'train_members_bloc/train_members_bloc.dart';

class TrainPage extends StatefulWidget {
  Train train;

  bool buttonState = true;
  String currentButtonText = 'Dołącz';
  TrainPage({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  State<TrainPage> createState() => _TrainPageState();
}

class _TrainPageState extends State<TrainPage> {
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: const Text('Pociąg')),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    '${widget.train.carrier} ${widget.train.trainNumber.toString()} ${widget.train.name}',
                    style: const TextStyle(fontSize: 28),
                  ),
                  InfoDisplay(
                    train: widget.train,
                  ),
                  EventsDisplay(train: widget.train),
                  MembersDisplay(
                    train: widget.train,
                  ),
                  ChangingButton(
                    isSelected: true,
                    textSelected: 'join',
                    textUnselected: 'textUnSele',
                    onPress: (value) {
                      log('pressed');
                      try {
                        HomeService homeService = sl.get<HomeService>();
                        if (user != null) {
                          homeService.joinTrain(user.uid, widget.train);
                        } else {
                          log('blad w dołacznaiu do pociągu, nie otrzymano zalogowanego urzystkownaia');
                        }
                      } catch (e) {
                        log('erro $e');
                      }
                    },
                  ),
                  TextButton(
                      onPressed: () async {
                        HomeService homeService = sl.get<HomeService>();
                        if (user != null) {
                          await homeService.isUserInTrain(
                              user.uid, widget.train);
                        } else {
                          log('user = null');
                        }
                      },
                      child: Text('test btn')),
                  TextButton(
                      onPressed: () async {
                        HomeService homeService = sl.get<HomeService>();
                        if (user != null) {
                          await homeService.leaveTrain(user.uid, widget.train);
                        } else {
                          log('user = null');
                        }
                      },
                      child: Text('leave btn')),
                ],
              ),
            )));
  }
}

class ChangingButton extends StatefulWidget {
  final ValueChanged onPress;
  bool isSelected;
  String textSelected;
  String textUnselected;
  ChangingButton({
    Key? key,
    required this.onPress,
    required this.isSelected,
    required this.textSelected,
    required this.textUnselected,
  }) : super(key: key);

  @override
  State<ChangingButton> createState() => _ChangingButtonState();
}

class _ChangingButtonState extends State<ChangingButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: (() {
          widget.onPress(context);
        }),
        child: Text(
            widget.isSelected ? widget.textSelected : widget.textUnselected),
      ),
    );
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
                  if (state.eventList.isEmpty) return Text('No events');
                  return EventsList(eventList: state.eventList);
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
                    return MembersList(userList: state.userList);
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
