import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Container tutorialMarginPadding() {
    return Container(
        color: Colors.yellow,
        margin: const EdgeInsets.all(50),
        padding: const EdgeInsets.all(30),
        child: Container(
          color: Colors.orange,
          child: const Text("container 위젯에 텍스트 위젯을 추가한 경우"),
        ));
  }

  Container tutorialBoxDecorator() {
    return Container(
      margin: const EdgeInsets.all(30),
      // color: Colors.amber,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.green,
              width: 2,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignInside),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(100), bottomLeft: Radius.circular(100)),
          // color: Colors.amber,
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purpleAccent, Colors.white]),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 4.0,
                blurRadius: 10.0,
                blurStyle: BlurStyle.normal)
          ]),
    );
  }

  Text tutorialTextStyle() {
    return const Text(
      '플러터 텍스트 위젯',
      style: TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontStyle: FontStyle.italic,
          letterSpacing: 10,
          shadows: [
            Shadow(color: Colors.black54, offset: Offset(1, 2), blurRadius: 4)
          ],
          decoration: TextDecoration.underline,
          decorationColor: Colors.blueGrey,
          decorationStyle: TextDecorationStyle.double),
    );
  }

  Text tutorialTextTheme() {
    return const Text('hello! how are you?');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('위젯 실습'),
            ),
            body: tutorialTextTheme()));
  }
}
