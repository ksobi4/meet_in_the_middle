// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mitm4/core/theme.dart';
import 'package:mitm4/core/widgets/loading_widget.dart';
import 'package:mitm4/features/home/presentation/widgets/events_list.dart';
import 'package:mitm4/features/home/presentation/widgets/members_list.dart';

import '../../../core/get_it.dart';
import '../../../core/router/router.gr.dart';
import '../blocs/is_train_in_db_bloc/is_train_in_db_bloc.dart';
import '../blocs/is_train_member_bloc/is_train_member_bloc.dart';
import '../blocs/train_events_bloc/train_events_bloc.dart';
import '../blocs/train_members_bloc/train_members_bloc.dart';
import '../model/transfers.dart';
import '../service/home_service.dart';

class TrainPage extends StatelessWidget {
  Train train;
  TrainPage({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<IsTrainInDbBloc>()..add(IsTrainInDbEvent.check(train)),
      child: Builder(builder: ((context) {
        return BlocBuilder<IsTrainInDbBloc, IsTrainInDbState>(
            builder: ((context, state) {
          if (state is IsTrainInDbStateLoading) {
            return Scaffold(
              body: Center(
                  child: Column(
                children: [LoadingWidgetTrain()],
              )),
            );
          } else if (state is IsTrainInDbStateInit) {
            return Text('init data');
          } else if (state is IsTrainInDbStateLoaded) {
            return TrainPageLoaded(train: train);
          } else if (state is IsTrainInDbStateError) {
            return Text('error ${state.message}');
          } else {
            return const Text('nic');
          }
        }));
      })),
    );
  }
}

class TrainPageLoaded extends StatefulWidget {
  Train train;

  bool buttonState = true;
  String currentButtonText = 'Dołącz';
  TrainPageLoaded({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  State<TrainPageLoaded> createState() => _TrainPageState();
}

class _TrainPageState extends State<TrainPageLoaded> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: const Text('Pociąg')),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: ChangingButton(
                train: widget.train,
                onPress: _onPress,
                textSelected: 'Opuść przejazd',
                textUnselected: 'Dołącz do przejazdu'),
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
                  EventsDisplay(
                      train: widget.train, reloadFunction: reloadFunction),
                  MembersDisplay(
                    train: widget.train,
                  ),
                ],
              ),
            )));
  }

  void reloadFunction() {
    setState(() {});
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
      setState(() {});
    }
  }
}

class ChangingButton extends StatefulWidget {
  final ValueChanged onPress;
  String textSelected;
  String textUnselected;
  Train train;
  bool isSelected = false;

  ChangingButton({
    Key? key,
    required this.onPress,
    required this.textSelected,
    required this.textUnselected,
    required this.train,
    // this.isSelected = false,
  }) : super(key: key);

  @override
  State<ChangingButton> createState() => _ChangingButtonState();
}

class _ChangingButtonState extends State<ChangingButton> {
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return Text('aa');
    }

    return BlocProvider.value(
      value: sl<IsTrainMemberBloc>()
        ..add(IsTrainMemberEvent.get(user.uid, widget.train)),
      child: Builder(
        builder: (context) {
          return BlocBuilder<IsTrainMemberBloc, IsTrainMemberState>(
              builder: ((context, state) {
            if (state is IsTrainMemberInit) {
              return Container();
            } else if (state is IsTrainMemberLoading) {
              return FloatingActionButton.extended(
                backgroundColor: AppColors.accent,
                onPressed: () {},
                label: Text('                    '),
              );
            } else if (state is IsTrainMemberError) {
              return Text('errror ${state.message}');
            } else if (state is IsTrainMemberLoaded) {
              widget.isSelected = state.isTrainMember;
              return FloatingActionButton.extended(
                backgroundColor: AppColors.accent,
                onPressed: () {
                  widget.onPress(widget.isSelected);
                  widget.isSelected = !widget.isSelected;
                  setState(() {});
                },
                label: Text(widget.isSelected
                    ? widget.textSelected
                    : widget.textUnselected),
              );
            } else {
              return Container();
            }
          }));
        },
      ),
    );
  }
}

class EventsDisplay extends StatefulWidget {
  final VoidCallback reloadFunction;
  Train train;
  EventsDisplay({
    Key? key,
    required this.reloadFunction,
    required this.train,
  }) : super(key: key);

  @override
  State<EventsDisplay> createState() => _EventsDisplayState();
}

class _EventsDisplayState extends State<EventsDisplay> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: Text('event'),
      children: [
        BlocProvider.value(
          value: sl<TrainEventsBloc>()..add(TrainEventsEvent.get(widget.train)),
          child: Builder(builder: ((context) {
            return BlocBuilder<TrainEventsBloc, TrainEventsState>(
              builder: (context, state) {
                if (state is TrainEventsLoading) {
                  return LoadingWidgetTrain();
                } else if (state is TrainEventsInit) {
                  return const Text('init');
                } else if (state is TrainEventsLoaded) {
                  if (state.eventList.isEmpty) return Text('No events');
                  return EventsList(
                      eventList: state.eventList, reloadFunction: _onPop);
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
              context.router
                  .push(AddEventPageRoute(train: widget.train))
                  .then((value) {
                _onPop();
              });
            },
            child: Text('Dodaj event')),
      ],
    );
  }

  void _onPop() {
    sl<TrainEventsBloc>().add(TrainEventsEvent.get(widget.train));
    widget.reloadFunction();
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
  bool isFirst = true;

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
                    return LoadingWidgetTrain();
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
