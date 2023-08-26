import 'package:flutter/material.dart';
import 'package:widget_sample/abstract/test_func_class.dart';

class BasicWidgetChapter implements TestFuncClass {
  @override
  Widget viewTestFunc() {
    return tutorialIcon();
  }

  Container tutorialMarginPadding() {
    return Container(
      color: Colors.yellow,
      margin: const EdgeInsets.all(50),
      padding: const EdgeInsets.all(30),
      child: Container(
        color: Colors.orange,
        child: const Text("container 위젯에 텍스트 위젯을 추가한 경우"),
      ),
    );
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

  Text tutorialTextTheme(BuildContext context) {
    return Text(
      'hello! how are you? hello! how are you? hello! ',
      style: Theme.of(context).textTheme.headlineMedium,
      textDirection: TextDirection.rtl,
    );
  }

  Column tutorialTextTheme2(BuildContext context) {
    return Column(children: [
      Text(
        'hello! how are you? hello! how are you? hello! ',
        style: Theme.of(context).textTheme.headlineMedium,
        textDirection: TextDirection.rtl,
      ),
      Text(
        'hello! how are you? hello! how are you? hello! ',
        style: Theme.of(context).textTheme.headlineMedium,
        textDirection: TextDirection.ltr,
      ),
    ]);
  }

  Text tutorialOverflow() {
    return const Text(
      '테ㄱ스트 위ㅅㅢ overflow를 학습하고 있습니다/',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(color: Colors.orange, fontSize: 30),
    );
  }

  Text tutorialTextRich(BuildContext context) {
    return Text.rich(TextSpan(
        text: 'How ',
        style: Theme.of(context).textTheme.headlineMedium,
        children: const <TextSpan>[
          TextSpan(
              text: 'are ',
              style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  color: Colors.orange)),
          TextSpan(
              text: 'you?',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ]));
  }

  Image tutorialNetworkImage() {
    return Image.network('https://picsum.photos/300?image=24');
  }

  Image tutorialAssetImage() {
    return const Image(
      image: AssetImage('assets/image01.jpg'),
      width: 200,
      height: 400,
      fit: BoxFit.fill,
    );
  }

  Container tutorialIcon() {
    return Container(
      margin: const EdgeInsets.all(150),
      child: const Icon(
        Icons.forest,
        size: 50,
        color: Colors.green,
      ),
    );
  }
}
