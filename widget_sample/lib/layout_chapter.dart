import 'package:flutter/material.dart';
import 'package:widget_sample/abstract/test_func_class.dart';

class LayoutChapter implements TestFuncClass {
  @override
  Widget viewTestFunc() {
    return tutorialPadding();
  }

  Column tutorialColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.cyan[600],
          ),
        ),
        Expanded(
            flex: 2,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber[600],
            )),
        Expanded(
          flex: 3,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red[600],
          ),
        ),
      ],
    );
  }

  Row tutorialRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(10),
          width: 80,
          height: 80,
          color: Colors.cyan[600],
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 90,
          height: 90,
          color: Colors.amber[600],
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 100,
          height: 100,
          color: Colors.red[600],
        ),
      ],
    );
  }

  Stack tutorialStack() {
    return Stack(
      children: [
        Container(
          width: 400,
          height: 500,
          color: Colors.yellowAccent,
        ),
        Container(
          width: 300,
          height: 400,
          color: Colors.amber[600],
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.red[600],
        ),
        const Text(
          'Stack',
          style: TextStyle(color: Colors.white, fontSize: 40),
        )
      ],
    );
  }

  Center tutorialCenter() {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        color: Colors.amberAccent,
        width: 120,
        height: 120,
      ),
    );
  }

  Center tutorialCenterWithAlign() {
    return Center(
      child: Container(
        width: 120,
        height: 120,
        color: Colors.blue[50],
        child: const Align(
          alignment: Alignment.topRight,
          child: FlutterLogo(size: 60),
        ),
      ),
    );
  }

  Column tutorialSizedBox() {
    return Column(
      children: [
        Image.network(
          'https://picsum.photos/200?image=30',
          width: 420,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20,
        ),
        Image.network(
          'https://picsum.photos/200?image=30',
          width: 420,
          height: 180,
          fit: BoxFit.contain,
        ),
      ],
    );
  }

  Column tutorialPadding() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Image.network(
            'https://picsum.photos/200?image=30',
            width: 420,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Image.network(
          'https://picsum.photos/200?image=30',
          width: 420,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20,
        ),
        Image.network(
          'https://picsum.photos/200?image=30',
          width: 420,
          height: 180,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
