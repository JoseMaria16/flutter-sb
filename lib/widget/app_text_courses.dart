// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppTextCourses extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  
  AppTextCourses({super.key,
  this.size=17,
  required this.text,
  this.color=Colors.black54,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}