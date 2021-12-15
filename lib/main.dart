// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
              "Nedim Ramazanoğlu",
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
              "Cabin Interior Shop Engineer",
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
                  "mr.ramicevic@gmail.com",
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
