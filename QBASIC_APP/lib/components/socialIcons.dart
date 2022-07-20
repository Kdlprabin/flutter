import 'package:flutter/material.dart';

class SocialIcons extends StatelessWidget {
  final img;
  const SocialIcons({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: 49,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(0, 2))
          ],
          image: DecorationImage(image: AssetImage(img))),
    );
  }
}
