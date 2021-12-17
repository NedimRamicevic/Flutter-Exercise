import 'package:flutter/material.dart';
import 'user.dart';

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
          const Divider(
            height: 60,
            color: Colors.amberAccent,
          ),
          Text(
            "Name",
            style: TextStyle(color: Colors.grey[500], letterSpacing: 2),
          ),
          const SizedBox(height: 5.0),
          Text(
            user.name,
            style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Title",
            style: TextStyle(color: Colors.grey[500], letterSpacing: 2),
          ),
          const SizedBox(height: 5.0),
          Text(
            user.title,
            style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Contact",
            style: TextStyle(color: Colors.grey[500], letterSpacing: 2),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              const SizedBox(
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
