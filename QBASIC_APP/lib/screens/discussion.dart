import 'package:flutter/material.dart';
import 'package:pythonprograms/screens/AskQuestion.dart';
import 'package:pythonprograms/screens/GiveAnswer.dart';
import 'package:pythonprograms/screens/programfile.dart';

class Discussion extends StatelessWidget {
  const Discussion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 237, 241, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 12, 69, 117),
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Center(child: Text("Trending Question")),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            CommentBox(),
            CommentBox(),
            CommentBox(),
            CommentBox(),
            CommentBox(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.white),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Color.fromARGB(255, 15, 68, 112),
              )),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => GiveAnswer()));
          },
          child: Container(
            height: 60,
            child: Center(
                child: Text(
              "Give Answer",
              style: TextStyle(fontSize: 16),
            )),
          ),
        ),
      ),
    );
  }
}

class CommentBox extends StatelessWidget {
  const CommentBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 7, offset: Offset(0, 1))
            ]),
      ),
    );
  }
}
