import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class scroll extends StatelessWidget {
  const scroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ImagestoView(image: "images/firstscroll.png"),
        ImagestoView(
          image: "images/secondscroll.png",
        ),
        ImagestoView(
          image: "images/thirdscroll.png",
        )
      ],
      options: CarouselOptions(
          viewportFraction: 1,
          height: 150,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          enableInfiniteScroll: true),
    );
  }
}

class ImagestoView extends StatelessWidget {
  final image;
  const ImagestoView({
    Key? key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: double.infinity,
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ));
  }
}
