import 'package:flutter/material.dart';
import 'user.dart';
import 'projects.dart';

class IdCard extends StatelessWidget {
  const IdCard({
    Key? key,
    required this.user,
    required this.delete,
  }) : super(key: key);

  final User user;
  final Function delete;
  // Container buildProjects() {
  //   return Container(
  //     margin: const EdgeInsets.all(5),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(8),
  //       color: Colors.amberAccent, //Borde
  //     ),
  //     alignment: Alignment.center,
  //     child: Card(
  //       margin: const EdgeInsets.all(2),
  //       color: Colors.grey[900],
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: [
  //           const Text(
  //             "Projects",
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //               color: Colors.amberAccent,
  //               fontSize: 18,
  //             ),
  //           ),
  //           Column(
  //             children: user.projects
  //                 .map((e) => Column(
  //                       crossAxisAlignment: CrossAxisAlignment.stretch,
  //                       children: [
  //                         Text(
  //                           "- $e",
  //                           textAlign: TextAlign.start,
  //                           style: TextStyle(color: Colors.grey[400]),
  //                         ),
  //                         const SizedBox(
  //                           height: 5,
  //                         ),
  //                         TextButton.icon(
  //                             onPressed: () => delete(e),
  //                             icon: const Icon(Icons.delete),
  //                             label: const Text("delete"))
  //                       ],
  //                     ))
  //                 .toList(),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    List<dynamic> myProjects = user.projects;
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
          ),
          const SizedBox(
            height: 20,
          ),
          Projects(
              projectList: user.projects,
              delete: (e) {
                delete(e);
              })
        ],
      ),
    );
  }
}
