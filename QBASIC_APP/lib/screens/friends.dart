import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Center(child: Text("Friend List")),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 12, 69, 117),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FriendsWindow(),
                FriendsWindow(),
                FriendsWindow(),
                FriendsWindow(),
                FriendsWindow(),
                FriendsWindow(),
                FriendsWindow(),
                FriendsWindow(),
              ],
            ),
          ),
          Container(
            height: 550,
            child: ListView(
              children: [
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1, offset: Offset(0, 3))
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.blueGrey, shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FriendsWindow extends StatelessWidget {
  const FriendsWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(0, 3))
            ]),
      ),
    );
  }
}
