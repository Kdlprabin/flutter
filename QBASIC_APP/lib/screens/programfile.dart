import 'package:flutter/material.dart';
import 'package:pythonprograms/components/problems.dart';

var show = Explain();
Color color = Colors.white;
String text =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic.\n \nTypesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n \nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source";

class programfile extends StatelessWidget {
  const programfile({Key? key}) : super(key: key);

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
      backgroundColor: Color.fromRGBO(232, 237, 241, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView(
          children: [
            Container(
              height: 250,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    width: 330,
                    height: 80,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 13, 89, 151),
                                ),
                                child: Center(
                                  child: Problem_number(
                                  ),
                                ),
                              ),
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Write a program to display \nvolume of sphere.",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 11, 69, 116)),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "CLS \n INPUT 'ENTER RADIUS' : R \n V = ( 4/3 )*3.14*R ^ 3 \n PRINT 'VOLUME OF SPHERE' : V \n END",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                width: 320,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(247, 247, 247, 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedButton(
                                onPressed: () {
                                  SetState() {
                                    show = Explain();
                                  }
                                },
                                child: Text("Explaination")),
                            OutlinedButton(
                                onPressed: () {
                                  SetState() {}
                                },
                                child: Text("Flowchart"))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 5),
                      child: show,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Problem_number extends StatelessWidget {
  const Problem_number({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "1",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 40),
    );
  }
}

class Flowchartshow extends StatelessWidget {
  const Flowchartshow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage("images/blank.png"));
  }
}

class Explain extends StatelessWidget {
  const Explain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
    );
  }
}
