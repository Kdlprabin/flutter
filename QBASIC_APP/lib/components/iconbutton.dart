import 'package:flutter/material.dart';
import 'package:pythonprograms/screens/Mygroups.dart';
import 'package:pythonprograms/screens/Todo.dart';
import 'package:pythonprograms/screens/discussion.dart';
import 'package:pythonprograms/screens/friends.dart';

class Iconbuttoncustom extends StatelessWidget {
  const Iconbuttoncustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Friends()));
                    },
                    icon: Icon(
                      Icons.people_alt_outlined,
                      color: Colors.pink,
                      size: 30,
                    )),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 1, blurRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Friends",
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mygroups()));
                    },
                    icon: Icon(
                      Icons.people_outline_outlined,
                      color: Colors.green,
                      size: 30,
                    )),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 1, blurRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Groups",
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person_outline,
                      color: Colors.blue,
                      size: 30,
                    )),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 1, blurRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Nearby",
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Discussion()));
                    },
                    icon: Icon(
                      Icons.share,
                      color: Colors.orange,
                      size: 30,
                    )),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 1, blurRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Discussion",
                  style: TextStyle(fontSize: 8),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Todo()));
                    },
                    icon: Icon(
                      Icons.note_add_outlined,
                      color: Colors.yellow,
                      size: 30,
                    )),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 1, blurRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Todo list",
                  style: TextStyle(fontSize: 8),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
