// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
        theme: theme(context),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'welcome to flutter',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: Colors.grey),
            ),
            actions: const [
              Icon(Icons.shopping_cart),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.search_rounded,
                color: Colors.redAccent,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.settings,
                color: Colors.purpleAccent,
              ),
              SizedBox(
                width: 40,
              )
            ],
          ),
          body: const Center(
            child: Text(
              'hello world',
              style: TextStyle(
                  fontSize: 48,
                  fontStyle: FontStyle.italic,
                  color: Colors.purple),
            ),
          ),
        ));
    return materialApp;
  }
}
