import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key, required this.projectList}) : super(key: key);
  final List<String> projectList;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[400],
      child: Column(
        children: projectList.map((e) => Text(e)).toList(),
      ),
    );
  }
}
