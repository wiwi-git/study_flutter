import 'package:flutter/material.dart';
import 'package:widget_sample/input_widget_chapter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  MaterialApp addedFloatingActionButtonApp(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('위젯 실습'),
        ),
        body: const Center(
          child: Text('아래 버튼을 누르세요!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('object');
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  MaterialApp defaultApp(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('위젯 실습'),
          ),
          body: TutorialInputWidget().viewTestFunc()),
    );
  }

  MaterialApp safeAreaApp(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        top: true,
        left: false,
        bottom: true,
        right: false,
        minimum: EdgeInsets.all(10),
        child: Scaffold(
          body: Text(
            'SafeArea Widget을 추가한 경우',
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return addedFloatingActionButtonApp(context);
  }
}
