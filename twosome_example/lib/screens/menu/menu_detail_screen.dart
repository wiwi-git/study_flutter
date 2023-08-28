import 'package:flutter/material.dart';
import 'package:twosome_example/models/coffee.dart';

class MenuDetailScreen extends StatefulWidget {
  const MenuDetailScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Coffee item;

  @override
  State<StatefulWidget> createState() {
    return _MenuDetailScreen();
  }
}

class _MenuDetailScreen extends State<MenuDetailScreen> {
  String? choice = 'hot';

  @override
  Widget build(BuildContext context) {
    Coffee thisCoffee = widget.item;

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.grey,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          '커피&음료',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    choice == 'hot'
                        ? thisCoffee.imageUrl
                        : thisCoffee.imageUrl2,
                  ),
                ),
                Text(
                  thisCoffee.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  '${thisCoffee.price} 원',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  '온도',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    padding: const EdgeInsets.all(8),
                    label: const SizedBox(
                      width: 140,
                      child: Text(
                        '핫',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    selected: choice == 'hot',
                    onSelected: (selected) {
                      setState(() {
                        choice = 'hot';
                      });
                    },
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                          color: choice == 'hot' ? Colors.black : Colors.grey),
                    ),
                  ),
                  ChoiceChip(
                    padding: const EdgeInsets.all(8),
                    label: const SizedBox(
                      width: 140,
                      child: Text(
                        '아이스',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    selected: choice == 'ice',
                    onSelected: (selected) {
                      setState(() {
                        choice = 'ice';
                      });
                    },
                    selectedColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                          color: choice == 'ice' ? Colors.black : Colors.grey),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 60,
              color: Colors.red,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '${thisCoffee.price} 원',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(thisCoffee.title),
                      content: Text('${thisCoffee.price}원 입니다.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Cancel');
                          },
                          child: const Text('취소'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'OK');
                            Navigator.pop(context, 'OK');
                          },
                          child: const Text('확인'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                '주문하기',
                style: TextStyle(color: Colors.red, fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
