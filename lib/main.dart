// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: Center(
        child: Text("First App"),
        ),
      backgroundColor: Colors.black54,
    ),
    body:  Column(
        children: [
          Row(
            children: [
              Image(
            image: NetworkImage("https://www.buseterim.com.tr/upload/default/2019/2/20/saraybosnadayapmanzgereken10sey680.jpg",scale: 5)
            ),
      Image(
        image: NetworkImage("https://3.bp.blogspot.com/-Zg_4OG6QBL8/Uz8gTh1FgSI/AAAAAAAAvVA/rRlsHzewHpw/s1600/Ned%C5%BEari%C4%87i+Camii,+Gracanica,+Bosna+Hersek.jpg",
        scale: 5),
        ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey,
    floatingActionButton: FloatingActionButton(
      child: Text("Tıkla"),
      onPressed: null,
      backgroundColor: Colors.red,
    ),
  );
  }
}