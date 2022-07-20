import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Center(child: Text("To Do")),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 12, 69, 117),
      ),
      body: Container(
          child: ListView(
        children: [
          Worktodo(),
          Worktodo(),
          Worktodo(),
          Worktodo(),
          Worktodo(),
          Worktodo(),
          Worktodo(),
          Worktodo(),
          Worktodo(),
          Worktodo(),
          Worktodo(),
          Worktodo()
        ],
      )),
    );
  }
}

class Worktodo extends StatelessWidget {
  const Worktodo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(0, 3))
            ]),
      ),
    );
  }
}
