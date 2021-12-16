// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = "Nedim Ramazanoğlu";
  String title = "Cabin Interior Engineer";
  String mail = "mr.ramicevic@gmail.com";

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
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/qq.JPG"),
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
              name,
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
              title,
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
                  mail,
                  style: TextStyle(color: Colors.grey[400]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
