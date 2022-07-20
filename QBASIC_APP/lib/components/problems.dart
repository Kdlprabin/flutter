import 'package:flutter/material.dart';
import 'package:pythonprograms/screens/programfile.dart';

class Problems extends StatelessWidget {
  final String num;
  const Problems({
    Key? key,
    required this.num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 0.1, blurRadius: 2),
          ],
        ),
        height: 80,
        child: OutlinedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.white)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => programfile()));
          },
          child: Row(
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 13, 89, 151)),
                  child: Center(
                    child: Text(
                      num,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 40),
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
                      fontSize: 16, color: Color.fromARGB(255, 11, 69, 116)),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
