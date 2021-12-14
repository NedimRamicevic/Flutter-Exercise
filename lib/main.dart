// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("First App"),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Image(
                    image: NetworkImage(
                        "https://platincdn.com/216/pictures/RZIVGFSMFV5112016103412_Bora_BR20_Full_Metal_Otomatik_Av_Tufe-i.jpg",
                        scale: 7)),
              ),
              Expanded(
                flex: 3,
                child: Center(
                  child: Text(
                    "Yala Beni Tara Beni",
                    style: TextStyle(
                        backgroundColor: Colors.black, color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Image(
                    image: NetworkImage(
                        "https://st2.myideasoft.com/idea/bs/58/myassets/products/246/ulkucu-market-biber-gazi.jpg?revision=1512061886",
                        scale: 5)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.facebook)),
              IconButton(onPressed: null, icon: Icon(Icons.android)),
              IconButton(onPressed: null, icon: Icon(Icons.android))
            ],
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        child: Text("Yala beni Tara Beni"),
        onPressed: null,
        backgroundColor: Colors.red,
      ),
    );
  }
}
