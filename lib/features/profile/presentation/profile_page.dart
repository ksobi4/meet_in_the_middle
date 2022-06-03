import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mitm4/core/router/router.gr.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    User user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Profile page'),
              Text(user.uid.toString()),
              Text(user.email.toString()),
              TextButton(
                  onPressed: () {
                    context.router.push(AuthWrapperRoute());
                    FirebaseAuth.instance.signOut();
                  },
                  child: const Text('LOG OUT'))
            ],
          ),
        ),
      ),
    );
  }
}
