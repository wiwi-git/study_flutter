import 'package:flutter/material.dart';

class TodayMenuWidget extends StatelessWidget {
  const TodayMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> todayMenuImgUrl = [
      'assets/images/cake01.jpg',
      'assets/images/cake02.jpg',
      'assets/images/dessert01.jpg',
      'assets/images/dessert02.jpg',
      'assets/images/cake03.jpg',
    ];
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '투썸의 오늘 인기 메뉴',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: todayMenuImgUrl.length,
            itemBuilder: (context, index) {
              if (index >= todayMenuImgUrl.length) {
                return Container();
              }
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset(todayMenuImgUrl[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
