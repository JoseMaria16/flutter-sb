// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Ept extends StatefulWidget {
  const Ept({super.key});

  @override
  State<Ept> createState() => _EptState();
}

class _EptState extends State<Ept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ept'),
      ),
      body: Container(
        child: Center(
          child: Text('Hi'),
        ),
      ),
    );
  }
}