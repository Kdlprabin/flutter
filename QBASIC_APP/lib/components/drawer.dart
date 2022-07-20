import 'package:flutter/material.dart';
import 'package:pythonprograms/screens/AboutUs.dart';
import 'package:pythonprograms/screens/homeScreen.dart';

class Customdrawer extends StatelessWidget {
  const Customdrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 10, 62, 104)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Welcome"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Bishal Khadka",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Edit profile"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 19, 77, 124),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.black,
              thickness: 1.5,
            ),
          ),
          ListBody(
            children: [
              ListTile(
                title: Listfordrawer(icon: Icons.home, name: "Home"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyhomePage()));
                },
              ),
              ListTile(
                title: Listfordrawer(icon: Icons.info, name: "About Us"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Aboutus()));
                },
              ),
              ListTile(
                title:
                    Listfordrawer(icon: Icons.star, name: "Rate Application"),
                onTap: () {},
              ),
              ListTile(
                title:
                    Listfordrawer(icon: Icons.apps, name: "More Application"),
                onTap: () {},
              ),
              ListTile(
                title: Listfordrawer(icon: Icons.share, name: "Share others"),
                onTap: () {
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class Listfordrawer extends StatelessWidget {
  final icon;
  final String name;
  const Listfordrawer({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: Color.fromARGB(255, 19, 77, 124),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
