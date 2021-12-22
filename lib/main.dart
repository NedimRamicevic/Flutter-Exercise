// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'user.dart';
import 'idCard.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<User> users = [
    User(
        name: "Nedim Ramazanoğlu",
        title: "Cabin Interior Engineer",
        mail: "mr.ramicevic@gmail.com",
        photo: "assets/qq.JPG",
        projects: ["naber", "nasılsın"]),
    User(
        name: "Neim Ramazanoğlu",
        title: "Senior React Developer",
        mail: "mr.ramazanoglu@gmail.com",
        photo: "assets/neim.JPG",
        projects: ["naber", "nasılsın"])
  ];
  int userNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() => userNum = 0);
                    },
                    child: Text("nedim",
                        style: TextStyle(
                            fontSize: 18,
                            backgroundColor: Colors.grey[800],
                            color: Colors.amberAccent))),
                TextButton(
                    onPressed: () {
                      setState(() => userNum = 1);
                    },
                    child: Text("neim",
                        style: TextStyle(
                            backgroundColor: Colors.grey[800],
                            fontSize: 18,
                            color: Colors.amberAccent))),
              ],
            ),
            SizedBox(height: 5),
            IdCard(
              user: users[userNum],
              delete: (e) {
                setState(() {
                  users[userNum].projects.remove(e);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
