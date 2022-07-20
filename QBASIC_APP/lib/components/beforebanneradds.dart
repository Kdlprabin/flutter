import 'package:flutter/material.dart';
import 'package:pythonprograms/screens/basicprogramming.dart';
import 'package:pythonprograms/screens/programfile.dart';

class Beforebanneraddbuttons extends StatelessWidget {
  const Beforebanneraddbuttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Elevatedbtn(ht: 90, wdh: 80, txtsize: 10),
                  Elevatedbtn(ht: 90, wdh: 80, txtsize: 10),
                  Elevatedbtn(ht: 90, wdh: 80, txtsize: 10)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Elevatedbtn(ht: 90, wdh: 80, txtsize: 10),
                  Elevatedbtn(ht: 90, wdh: 80, txtsize: 10),
                  Elevatedbtn(ht: 90, wdh: 80, txtsize: 10)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final Color clr = Colors.transparent;

class Elevatedbtn extends StatelessWidget {
  final double ht;
  final double wdh;
  final double txtsize;
  const Elevatedbtn({
    Key? key,
    required this.ht,
    required this.wdh,
    required this.txtsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ht,
      width: wdh,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => basicprogramming()));
        },
        child: Card(
          child: Column(
            children: [
              Icon(
                Icons.numbers,
                size: 35,
                color: Color.fromARGB(255, 6, 75, 132),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Divider(
                  color: Colors.blue,
                ),
              ),
              Text(
                "Basic \nProgramming",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: txtsize, color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
