// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'users.dart';

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
        photo: "assets/qq.JPG"),
    User(
        name: "Neim Ramazanoğlu",
        title: "Senior React Developer",
        mail: "mr.ramazanoglu@gmail.com",
        photo: "assets/neim.JPG")
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
            IdCard(user: users[userNum])
          ],
        ),
      ),
    );
  }
}

class IdCard extends StatelessWidget {
  const IdCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(user.photo),
              radius: 40,
            ),
          ),
          Divider(
            height: 60,
            color: Colors.amberAccent,
          ),
          Text(
            "Name",
            style: TextStyle(color: Colors.grey[500], letterSpacing: 2),
          ),
          SizedBox(height: 5.0),
          Text(
            user.name,
            style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Title",
            style: TextStyle(color: Colors.grey[500], letterSpacing: 2),
          ),
          SizedBox(height: 5.0),
          Text(
            user.title,
            style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Contact",
            style: TextStyle(color: Colors.grey[500], letterSpacing: 2),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                user.mail,
                style: TextStyle(color: Colors.grey[400]),
              )
            ],
          )
        ],
      ),
    );
  }
}
