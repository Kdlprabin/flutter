import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pythonprograms/screens/programfile.dart';

class GiveAnswer extends StatelessWidget {
  const GiveAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 12, 69, 117),
        title: Padding(
          padding: const EdgeInsets.only(left: 45.0),
          child: Text("Give Answer"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 200.0, bottom: 5),
              child: Text(
                "Your Answer",
                style: TextStyle(fontSize: 16),
              ),
            ),
            TextFormField(
              style: TextStyle(height: 8),
              decoration: InputDecoration(
                  label: Text("Write your answer here..."),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200, bottom: 5, top: 10),
              child: Text(
                "Answer Tag",
                style: TextStyle(fontSize: 16),
              ),
            ),
            TextFormField(
              style: TextStyle(height: 1),
              decoration: InputDecoration(
                  label: Text(
                    "Write a keyword to discover your question",
                    style: TextStyle(fontSize: 14),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "Submit",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
