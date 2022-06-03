import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:faker/faker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/flutter_auth_ui.dart';
import 'package:hive/hive.dart';

import '../../../core/get_it.dart';
import '../../../core/router/router.gr.dart';
import '../../../core/widgets/loading_widget.dart';

class AuthWrapper extends StatelessWidget {
  AuthWrapper({Key? key}) : super(key: key);

  final Box hiveBox = sl.get<Box>();

  dispose() {}

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      if (user == null) {
        log('1USER LOG OUT');
        // context.router.replace(AuthWrapperRoute());
        context.router.replace(const FirstScreenRoute());
        //_moveToLoginPage();
      } else {
        //add user if not exist in ;db
        final db = FirebaseDatabase.instance;
        DataSnapshot snap = await db.ref('users/${user.uid}').get();
        if (!snap.exists) {
          db.ref('users/${user.uid}').set({
            'nickname': faker.person.lastName(),
            'email': user.email,
            "name": faker.person.firstName(),
            "avatarUrl": faker.image.image(),
            "lastMessTime": '10:30 10.04.2022',
          });
        }

        log('1USER LOG IN');
        context.router.replace(const MainPageRoute());
      }
    });

    return Scaffold(
      body: Center(
          child: Column(
        children: const [
          LoadingWidgetTrain(),
        ],
      )),
    );
  }
}

Future<void> _moveToLoginPage() async {
  log('FIREBASE UI DO');
  bool a = FirebaseAuth.instance.currentUser == null;
  log('if user == null  $a');
  // Set provider
  final providers = [
    AuthUiProvider.email,
  ];

  final result = await FlutterAuthUi.startUi(
    items: providers,
    tosAndPrivacyPolicy: const TosAndPrivacyPolicy(
      tosUrl: "https://www.google.com",
      privacyPolicyUrl: "https://www.google.com",
    ),
    androidOption: const AndroidOption(
      enableSmartLock: false, // default true
      showLogo: true, // default false
      overrideTheme: true, // default false
    ),
    emailAuthOption: const EmailAuthOption(
      requireDisplayName: false, // default true
      enableMailLink: false, // default false
      handleURL: '',
      androidPackageName: '',
      androidMinimumVersion: '',
    ),
  );
  log('res= $result');
  // if (!result) {
  //   _moveToLoginPage();
  // }
}
