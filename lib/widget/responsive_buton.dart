// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:travel_sb/pages/navpages/main_pages.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.width, this.isResponsive=false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
      },
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Colors.blueAccent
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset("img/button-one.png"),
          ],
        ),
      ),
    );
  }
}