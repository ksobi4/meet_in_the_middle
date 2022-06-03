import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_auth_ui/flutter_auth_ui.dart';
// import 'package:lottie/lottie.dart';
// import 'package:mitm4/core/router/router.gr.dart';
import 'package:mitm4/main_page.dart';

import '../../../core/router/router.gr.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToRegistration();
  }

  _navigateToRegistration() async {
    await Future.delayed(Duration(seconds: 20), () {});
    //context.router.push(const MainPageRoute());
    _moveToLoginPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Image.asset("assets/cum.gif", height: 350, width: 350)),
      ),
    );
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
    if (result) {
      // _moveToLoginPage();
      dispose();
      context.router.replace(const MainPageRoute());
    }
  }
}
