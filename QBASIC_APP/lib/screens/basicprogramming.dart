import 'package:flutter/material.dart';

import '../components/problems.dart';

class basicprogramming extends StatelessWidget {
  const basicprogramming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 12, 69, 117),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 60.0),
            child: Text(
              "Basic Programming",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 69, 117), fontSize: 15),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: ListView(children: [
          Problems(num: "1"),
          Problems(num: "2"),
          Problems(num: "3"),
          Problems(num: "4"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Container(
              alignment: Alignment.center,
              child: Text("banner ads"),
              height: 40,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
          Problems(num: "5"),
          Problems(num: "6"),
          Problems(num: "7"),
          Problems(num: "8"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Container(
              alignment: Alignment.center,
              child: Text("banner ads"),
              height: 40,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
          Problems(num: "9"),
        ]),
      ),
    );
  }
}
