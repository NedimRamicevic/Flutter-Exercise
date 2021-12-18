import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key, required this.projectList}) : super(key: key);
  final List<dynamic> projectList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      color: Colors.grey[900],
      child: Card(
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
