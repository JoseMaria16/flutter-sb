

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  
   AppLargeText({super.key,
  this.size=35,
  required this.text,
  this.color=const Color.fromARGB(255, 52, 58, 142),

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w500
      ),
    );
  }
}