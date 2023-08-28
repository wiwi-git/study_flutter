import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key) {
    print("MyApp() Constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("MyApp().build");
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: "LifeCycle Test"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key) {
    print("MyHomePage() constructor");
  }

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    print("_MyHomePageState() constructor : mounted=$mounted");
  }
  final String TAG = "_MyHomePageState";

  int _counter = 0;
  @override
  void initState() {
    print(
        "$TAG.initState : mounted=$mounted : _counter($_counter)");
    super.initState();
  }

  @override
  void reassemble() {
    print(
        "$TAG.reassemble :: mounted=$mounted : _counter($_counter)");
    super.reassemble();
  }

  @override
  void didChangeDependencies() {
    print(
        "$TAG.didChangeDependencies : mounted=$mounted : _counter($_counter)");
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print(
        "$TAG.dispose : mounted=$mounted : _counter($_counter)");
    super.dispose();
  }

  @override
  void deactivate() {
    print(
        "$TAG.deactivate : mounted=$mounted : _counter($_counter)");
    super.deactivate();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    print(
        "$TAG.didUpdateWidget : mounted=$mounted : _counter($_counter)");
    super.didUpdateWidget(oldWidget);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      print(
          "$TAG.setState() : mounted=$mounted : _counter($_counter)");
    });
  }

  @override
  Widget build(BuildContext context) {
    print(
        "$TAG.build() : mounted=$mounted : _counter($_counter)");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
