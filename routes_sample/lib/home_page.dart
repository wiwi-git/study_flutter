import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('r Home Page'),
      ),
      body: const Center(
        child: Text(
          '아래 버튼을 눌러 다음 페이지로!',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second_page');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
