import 'package:flutter/material.dart';
import 'package:pythonprograms/components/scroll.dart';

import '../components/appbar.dart';
import '../components/beforebanneradds.dart';
import '../components/drawer.dart';
import '../components/iconbutton.dart';
import '../components/searchbar.dart';

class MyhomePage extends StatelessWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 237, 241, 1),
      drawer: Customdrawer(),
      body: ListView(
        children: [
          CustomAppBar(),
          Customsearchbar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: scroll()),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 200, top: 10, bottom: 5, left: 20),
            child: Text(
              "Code of the day",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: 100,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
            ),
          ),
          Iconbuttoncustom(),
          Beforebanneraddbuttons(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              alignment: Alignment.center,
              child: Text("banner ads"),
              height: 40,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [Bigbuttons(), Bigbuttons(), Bigbuttons()],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Bigbuttons extends StatelessWidget {
  const Bigbuttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Elevatedbtn(ht: 140, wdh: 120, txtsize: 12),
          Elevatedbtn(ht: 140, wdh: 120, txtsize: 12)
        ],
      ),
    );
  }
}
