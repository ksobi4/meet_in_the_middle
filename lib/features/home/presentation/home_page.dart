// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mitm4/core/router/router.gr.dart';
import 'package:mitm4/features/home/presentation/user_trains_bloc/user_trains_bloc.dart';

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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Home page'),
              TextButton(
                onPressed: _onPress,
                child: const Text('Dodaj przejazd'),
              ),
              BlocProvider.value(
                value: sl<UserTrainsBloc>()..add(UserTrainsEvent.get(user.uid)),
                child: Builder(builder: ((context) {
                  return BlocBuilder<UserTrainsBloc, UserTrainsState>(
                      builder: ((context, state) {
                    if (state is UserTrainsStateInit) {
                      return Container();
                    } else if (state is UserTrainsStateLoading) {
                      return const Text('loading'); //TODO: mroziu
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

  void _onPress() async {
    context.router.push(SearchTransfersPageRoute());
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
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemBuilder: ((context, index) {
          Train train = trainList[index];
          return Text(' ${train.startStation} ${train.trainNumber}');
        }),
        itemCount: trainList.length,
      ),
    );
    //TODO dla mrozia
  }
}
