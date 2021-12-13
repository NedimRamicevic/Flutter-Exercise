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
    body:  Center(
      child: Text(
        "Naber Canıms",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue[50],
          
        ),
        ),
      
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