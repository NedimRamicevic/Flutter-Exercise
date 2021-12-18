import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key, required this.projectList}) : super(key: key);
  final List<dynamic> projectList;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: Column(
        children: [
          const Center(
            child: Text(
              "Projects",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: projectList
                .map((e) => Column(
                      children: [
                        Text(
                          "- $e",
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
    );
  }
}
