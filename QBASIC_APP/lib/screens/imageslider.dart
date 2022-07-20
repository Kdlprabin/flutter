import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slider extends StatelessWidget {
  const slider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [],
      options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 4000)),
    );
  }
}
