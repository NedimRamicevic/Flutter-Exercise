import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key, required this.projectList}) : super(key: key);
  final List<dynamic> projectList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.amberAccent, //Borde
      ),
      alignment: Alignment.center,
      child: Card(
        margin: EdgeInsets.all(2),
        color: Colors.grey[900],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Projects",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
              ),
            ),
            Column(
              children: projectList
                  .map((e) => Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "- $e",
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                          const SizedBox(
                            height: 5,
                          )
                        ],
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
