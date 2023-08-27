import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.bannerItemImgUrl,
  });

  final List<String> bannerItemImgUrl;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: bannerItemImgUrl.length,
      itemBuilder: (context, itemIndex, realIndex) {
        return Stack(
          children: [
            Image.asset(
              bannerItemImgUrl[itemIndex],
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.black38,
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(16),
                child: Text(
                  '${(itemIndex + 1).toString()}/${bannerItemImgUrl.length.toString()}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        );
      },
      options: CarouselOptions(
        viewportFraction: 1.0,
        autoPlay: true,
        initialPage: 0,
      ),
    );
  }
}
