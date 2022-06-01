import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mitm4/core/get_it.dart';
import 'package:wakelock/wakelock.dart';

import 'core/router/router.gr.dart';

import 'core/config/config.dart' as config;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Database
  await Firebase.initializeApp();
  // FirebaseDatabase.instance.setPersistenceEnabled(true);
  //get it locator
  await setupGetIt();

  //HIVE
  // final appDocumentDir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter();

  await Hive.openBox(config.hiveBoxName);

  runApp(MyApp());
  Wakelock.enable();
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = AppRouter();

  //dev only!!

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
    );
  }
}
