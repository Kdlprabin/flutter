import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(builder: ((context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu),
          color: Colors.black,
        );
      })),
      backgroundColor: Color.fromRGBO(232, 237, 241, 1),
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            children: [
              Text(
                "Hello,",
                style:
                    TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 18),
              ),
              Text(
                " Sanam",
                style: TextStyle(
                    color: Color.fromRGBO(25, 72, 118, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("images/blank.png"), fit: BoxFit.fill)),
        )
      ]),
      shadowColor: Color.fromARGB(0, 255, 255, 255),
    );
  }
}
