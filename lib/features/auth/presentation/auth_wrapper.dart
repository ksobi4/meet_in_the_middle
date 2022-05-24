import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/flutter_auth_ui.dart';
import 'package:hive/hive.dart';

import 'package:mitm4/core/router/router.gr.dart';

import '../../../core/get_it.dart';

class AuthWrapper extends StatelessWidget {
  AuthWrapper({Key? key}) : super(key: key);

  final Box hiveBox = sl.get<Box>();

  dispose() {}

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        log('1USER LOG OUT');
        // context.router.replace(AuthWrapperRoute());
        _moveToLoginPage();
      } else {
        log('1USER LOG IN');
        context.router.replace(const MainPageRoute());
      }
    });

    // User? user = FirebaseAuth.instance.currentUser;
    // if (user == null) {
    //   log('NO LOGED IN USER');
    //   _moveToLoginPage();
    // } else {
    //   log('AUTO LOG IN as User.id= ${user.uid}');
    //   context.router.replace(const MainPageRoute());
    // }

    return Scaffold(
      body: Center(
          child: Column(
        children: const [
          Text(
            'WRAPPER',
            style: TextStyle(fontSize: 20),
          )
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
