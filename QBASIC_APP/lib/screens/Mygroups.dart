import 'package:flutter/material.dart';

import 'AskQuestion.dart';

class Mygroups extends StatelessWidget {
  const Mygroups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("My Groups")),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 12, 69, 117),
      ),
      body: Container(
          child: ListView(
        children: [
          Groups(),
          Groups(),
          Groups(),
          Groups(),
          Groups(),
          Groups(),
          Groups()
        ],
      )),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AskQuestion()));
        },
        child: Container(
          height: 50,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 2, offset: Offset(0, 3)),
              ]),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(
              Icons.navigation_outlined,
              size: 25,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            Text(
              "Ask Question",
              style: TextStyle(fontSize: 15, color: Colors.white),
            )
          ]),
        ),
      ),
    );
  }
}

class Groups extends StatelessWidget {
  const Groups({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(0, 3))
            ]),
      ),
    );
  }
}
