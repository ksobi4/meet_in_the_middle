// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitm4/core/theme.dart';
import 'package:mitm4/features/home/presentation/is_train_member_bloc/is_train_member_bloc.dart';

import 'package:mitm4/features/home/presentation/widgets/events_list.dart';
import 'package:mitm4/features/home/presentation/widgets/members_list.dart';

import '../../../core/get_it.dart';
import '../../../core/router/router.gr.dart';
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
    if (user == null) {
      return Text('aa');
    }

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: const Text('Pociąg')),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton.extended(
              backgroundColor: AppColors.accent,
              onPressed: () {},
              label: Text('Dołącz do przejazdu'),
            ),
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
                  BlocProvider.value(
                    value: sl<IsTrainMemberBloc>()
                      ..add(IsTrainMemberEvent.get(user.uid, widget.train)),
                    child: Builder(
                      builder: (context) {
                        return BlocBuilder<IsTrainMemberBloc,
                            IsTrainMemberState>(builder: ((context, state) {
                          if (state is IsTrainMemberInit) {
                            return Container();
                          } else if (state is IsTrainMemberLoading) {
                            return Text('loading');
                          } else if (state is IsTrainMemberError) {
                            return Text('errror ${state.message}');
                          } else if (state is IsTrainMemberLoaded) {
                            return ChangingButton(
                              isSelected: state.isTrainMember,
                              textSelected: 'Wyjdź',
                              textUnselected: 'Dołącz',
                              onPress: _onPress,
                            );
                          } else {
                            return Container();
                          }
                        }));
                      },
                    ),
                  )
                ],
              ),
            )));
  }

  void _onPress(isPressed) async {
    User? user = FirebaseAuth.instance.currentUser;
    HomeService hs = sl<HomeService>();
    if (user != null) {
      log('isPresss = $isPressed');
      if (isPressed) {
        await hs.leaveTrain(user.uid, widget.train);
      } else {
        await hs.joinTrain(user.uid, widget.train);
      }
      sl<TrainMembersBloc>().add(TrainMembersEvent.get(widget.train));
    }
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
    return TextButton(
      onPressed: (() {
        widget.onPress(widget.isSelected);
        widget.isSelected = !widget.isSelected;
        setState(() {});
      }),
      child:
          Text(widget.isSelected ? widget.textSelected : widget.textUnselected),
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
        TextButton(
            onPressed: () {
              context.router.push(AddEventPageRoute(train: train));
            },
            child: Text('Dodaj event')),
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
