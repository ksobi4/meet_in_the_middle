// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:mitm4/core/router/router.gr.dart';
import 'package:mitm4/core/theme.dart';
import 'package:mitm4/core/widgets/loading_widget.dart';
import 'package:mitm4/features/firstpath/presentation/firstScreen.dart';
import 'package:mitm4/features/home/presentation/user_trains_bloc/user_trains_bloc.dart';
import 'package:mitm4/features/home/presentation/widgets/transfers_list.dart';

import '../../../core/get_it.dart';
import '../model/transfers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String temp1 = '';

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return const Text('aa');
    }

    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Meet in the Middle',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          bottom: PreferredSize(
              child: Divider(
                indent: 20,
                endIndent: 20,
              ),
              preferredSize: Size(4, 4))),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    _onPress(user);
                  },
                  label: Text('Wyszukaj przejazd'),
                  icon: Icon(Icons.search),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.accent,
                  ),
                ),
              ),
              BlocProvider.value(
                value: sl<UserTrainsBloc>()..add(UserTrainsEvent.get(user.uid)),
                child: Builder(builder: ((context) {
                  return BlocBuilder<UserTrainsBloc, UserTrainsState>(
                      builder: ((context, state) {
                    if (state is UserTrainsStateInit) {
                      return Container();
                    } else if (state is UserTrainsStateLoading) {
                      return LoadingWidgetTrain();
                    } else if (state is UserTrainsStateError) {
                      return Text('err ${state.message}');
                    } else if (state is UserTrainsStateLoaded) {
                      if (state.trainList.isEmpty) {
                        return const Text('Brak dodanych pociągów');
                      }
                      return TrainListWidget(trainList: state.trainList);
                    } else {
                      return Container();
                    }
                  }));
                })),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onPress(User user) async {
    context.router.push(SearchTransfersPageRoute()).then((value) {
      sl<UserTrainsBloc>().add(UserTrainsEvent.get(user.uid));
      setState(() {});
    });
  }
}

class TrainListWidget extends StatelessWidget {
  List<Train> trainList;
  TrainListWidget({
    Key? key,
    required this.trainList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //height: 400,
      child: ListView.builder(
        itemBuilder: ((context, index) {
          Train train = trainList[index];
          return OneTrain(train: train, isHome: true);
        }),
        itemCount: trainList.length,
      ),
    );
  }
}
