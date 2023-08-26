import 'package:flutter/material.dart';
import 'package:routes_sample/home_page.dart';
import 'package:routes_sample/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes Sample',
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/second_page': (context) => SecondPage(),
      },
    );
  }
}
