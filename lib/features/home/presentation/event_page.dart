// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mitm4/features/home/model/train_event.dart';
import 'package:mitm4/features/home/presentation/widgets/member.dart';

import '../../../core/get_it.dart';
import '../../../core/theme.dart';
import '../service/home_service.dart';
import 'is_event_member_bloc/is_event_member_bloc.dart';
import 'widgets/members_list.dart';

class EventPage extends StatefulWidget {
  TrainEvent event;
  EventPage({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.event.title),
          actions: [_getDeleteButton(widget.event.author.uuid)]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ChangingButton(
          onPress: _onPressFloatingBtn,
          textSelected: 'Opuść wydarzenie',
          textUnselected: 'Dołącz do wydarzenia',
          event: widget.event),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
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
                width: double.infinity, child: Text(widget.event.description)),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Miejsce',
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
                width: double.infinity,
                child: Text(
                    'Wagon: ${widget.event.carriage} Miejsce: ${widget.event.seat}')),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
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
            user: widget.event.author,
            isMarkOut: true,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
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
          MembersList(userList: widget.event.members),
          // _getDeleteButton(widget.event.author.uuid),
        ],
      )),
    );
  }

  void _onPressDeleteBtn() {
    User? user = FirebaseAuth.instance.currentUser;
    HomeService hs = sl<HomeService>();
    if (user != null) {
      hs.deleteEvent(user.uid, widget.event);
    } else {
      log('user == null');
    }
    context.router.pop();
  }

  Widget _getDeleteButton(String authorID) {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return const Text('aa');
    }

    if (authorID == user.uid) {
      return TextButton(
          onPressed: () {
            _onPressDeleteBtn();
          },
          child: const Text(
            'usuń',
            style: TextStyle(fontSize: 20),
          ));
    } else {
      return Container();
    }
  }

  void _onPressFloatingBtn(isPressed) async {
    User? user = FirebaseAuth.instance.currentUser;
    HomeService hs = sl<HomeService>();
    if (user != null) {
      log('isPresss = $isPressed');
      if (isPressed) {
        await hs.leaveEvent(user.uid, widget.event);
      } else {
        await hs.joinEvent(user.uid, widget.event);
      }
      // sl<TrainMembersBloc>().add(TrainMembersEvent.get(widget.train));
      setState(() {});
    }
  }
}

class ChangingButton extends StatefulWidget {
  final ValueChanged onPress;
  String textSelected;
  String textUnselected;
  TrainEvent event;
  bool isSelected = false;

  ChangingButton({
    Key? key,
    required this.onPress,
    required this.textSelected,
    required this.textUnselected,
    required this.event,
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
      value: sl<IsEventMemberBloc>()
        ..add(IsEventMemberEvent.get(user.uid, widget.event)),
      child: Builder(
        builder: (context) {
          return BlocBuilder<IsEventMemberBloc, IsEventMemberState>(
              builder: ((context, state) {
            if (state is IsEventMemberInit) {
              return Container();
            } else if (state is IsEventMemberLoading) {
              return FloatingActionButton.extended(
                backgroundColor: AppColors.accent,
                onPressed: () {},
                label: Text('                    '),
              );
            } else if (state is IsEventMemberError) {
              return Text('errror ${state.message}');
            } else if (state is IsEventMemberLoaded) {
              widget.isSelected = state.isEventMember;
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
