import 'package:cgv_clone/screens/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cgv_clone/firebase_options.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform),
      builder: (BuildContext context, AsyncSnapshot<FirebaseApp> snapshot) {
        return MaterialApp(
          title: 'CGV clone',
          home: MyHomePage(),
        );
      },
    );
    // return MaterialApp(
    //   title: 'CGV clone',
    //   home: MyHomePage(),
    // );
  }
}
