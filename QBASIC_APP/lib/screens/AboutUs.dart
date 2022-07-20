import 'package:flutter/material.dart';
import 'package:pythonprograms/screens/programfile.dart';
import 'package:flutter/services.dart';
import '../components/socialIcons.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(49),
          child: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Color.fromARGB(255, 12, 69, 117),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            title: Center(
              child: Container(
                height: 29,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(232, 237, 241, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      prefixIcon: Icon(Icons.search),
                      label: Text("Search"),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  color: Color.fromRGBO(46, 58, 89, 1),
                  height: 180,
                ),
                Container(
                  color: Color.fromRGBO(232, 237, 241, 1),
                )
              ],
            ),
            Positioned(
              top: 28,
              child: Text(
                "About Us",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins"),
              ),
            ),
            Positioned(
                top: 115,
                child: Container(
                  height: 208,
                  width: 306,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 4))
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 45.0),
                        child: Text(
                          "Dinga Ving",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        "make learning easy",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Dinga Vinga is one of the emerging and aspiring developing company which helps the students in different section.",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
              top: 66,
              child: Container(
                height: 92,
                width: 92,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(25, 72, 118, 1),
                    shape: BoxShape.circle),
                child: Center(
                    child: Text(
                  "B",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w400),
                )),
              ),
            ),
            Positioned(
              width: 250,
              top: 340,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: SocialIcons(
                      img: "images/linkedinIcon.png",
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: SocialIcons(img: "images/instagramIcon.jpg")),
                  InkWell(
                      onTap: () {},
                      child: SocialIcons(img: "images/facebookIcon.png")),
                  InkWell(
                      onTap: () {},
                      child: SocialIcons(img: "images/emaiIcon.png"))
                ],
              ),
            ),
            Positioned(
              top: 410,
              child: Container(
                width: 306,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(0, 4))
                    ]),
                child: Column(
                  children: [
                    Text(
                      "Contact",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 220.0, top: 30),
                      child: Column(
                        children: [
                          Icon(Icons.email_outlined),
                          Icon(Icons.phone_outlined),
                          Icon(Icons.location_on_outlined),
                          Icon(Icons.location_on_outlined),
                          Icon(Icons.location_on_outlined),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
