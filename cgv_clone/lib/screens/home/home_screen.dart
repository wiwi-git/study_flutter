import 'package:cgv_clone/widgets/image_slider_widget.dart';
import 'package:cgv_clone/widgets/movie_chart_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> menuItems = [
      "홈",
      "이벤트",
      "무비톡",
      "패스트오더",
      "기프트샵",
      "@GCV",
    ];

    List<String> bannerUrlItems = [
      "assets/images/banner_01.jpg",
      "assets/images/banner_02.jpg",
      "assets/images/banner_03.jpg",
      "assets/images/banner_04.jpg",
    ];

    return DefaultTabController(
      length: menuItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'CGV',
            style: TextStyle(
              fontSize: 26,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(Icons.airplane_ticket_outlined),
              color: Colors.red,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.movie_outlined),
              color: Colors.red,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.red,
              onPressed: () {},
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Container(
              color: Colors.red,
              child: TabBar(
                tabs: List.generate(
                  menuItems.length,
                  (index) => Tab(text: menuItems[index]),
                ),
                unselectedLabelColor: Colors.white,
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                ImageSliderWidget(bannerUrlItems: bannerUrlItems),
                const MovieChartWidget(),
                Divider(thickness: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildLabelIcon(Icons.phone_android, 'MY CGV'),
                      buildLabelIcon(Icons.photo, '포토플레이'),
                      buildLabelIcon(Icons.account_balance_wallet, '할인정보'),
                      buildLabelIcon(Icons.music_note, 'CGV스토어'),
                    ],
                  ),
                )
              ],
            ),
            const Text('event'),
            const Text('movie talk'),
            const Text('fast oder?'),
            const Text('gift'),
            const Text('@cgv'),
          ],
        ),
      ),
    );
  }

  Widget buildLabelIcon(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black12,
          ),
          child: Icon(icon),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
