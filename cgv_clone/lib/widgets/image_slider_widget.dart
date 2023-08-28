import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSliderWidget extends StatelessWidget {
  final List<String> bannerUrlItems;

  const ImageSliderWidget({super.key, required this.bannerUrlItems});

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;

    return CarouselSlider.builder(
      itemCount: bannerUrlItems.length,
      itemBuilder: (context, itemIndex, realIndex) {
        return Stack(
          children: [
            Image.asset(
              bannerUrlItems[itemIndex],
              fit: BoxFit.cover,
              width: appSize.width,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.black38,
                padding: const EdgeInsets.all(4),
                child: Text(
                  '${itemIndex + 1}/${bannerUrlItems.length}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        );
      },
      options: CarouselOptions(
        height: 160,
        autoPlay: true,
        viewportFraction: 1,
      ),
    );
  }
}
