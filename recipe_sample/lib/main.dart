import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'recipe_sample',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Example'),
      ),
      body: ListView(
        children: [
          Image.asset('assets/image01.jpg'),
          titleSection(),
          iconSection(),
          stepSection(context),
          stepSection(context),
          stepSection(context),
        ],
      ),
    );
  }

  Padding titleSection() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ㅇ아스파라거스토마토구이 & 아파거스마늘볶음',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            '맛남의광장에서 나온 아스파라거스요리!\n 입에 감기는 맛이지만, 쉬운 요리법에\n tnfdkswn, qkqqkscksdmfh cncjs!',
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Row iconSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconLabelRow(
          Icons.people,
          '4인분',
          Colors.grey,
          const EdgeInsets.only(left: 8),
        ),
        buildIconLabelRow(
          Icons.alarm,
          '15분이내',
          Colors.grey,
          const EdgeInsets.only(left: 8),
        ),
        buildIconLabelRow(
          Icons.star,
          '아무나',
          Colors.grey,
          const EdgeInsets.only(left: 6),
        ),
      ],
    );
  }

  Row buildIconLabelRow(
      IconData iconData, String label, Color textColor, EdgeInsets margin) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          iconData,
          color: textColor,
        ),
        Container(
          margin: margin,
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }

  Padding stepSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '조리 순서',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  '1',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  '[아스파라거스 토마토 구이] 아스파라거스는 4~5cm 길이로 자른다.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Image.asset(
                'assets/step01.jpg',
                width: MediaQuery.of(context).size.width * 0.3,
                fit: BoxFit.contain,
              ),
            ],
          ),
          buildIconLabelRow(
            Icons.lightbulb,
            '굵기가 얇은 아스파라거스를 사용해도 좋아요.',
            Colors.teal,
            const EdgeInsets.only(left: 8),
          ),
          buildIconLabelRow(
            Icons.shopping_cart,
            '라오메뜨 천역세라믹 양면도마',
            Colors.grey,
            const EdgeInsets.only(left: 8),
          ),
        ],
      ),
    );
  }
}
