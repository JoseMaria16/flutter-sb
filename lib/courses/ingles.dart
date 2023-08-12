// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Ingles extends StatefulWidget {
  const Ingles({super.key});

  @override
  State<Ingles> createState() => _InglesState();
}

class _InglesState extends State<Ingles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingles'),
      ),
      body: Container(
        child: Center(
          child: Text('Hi'),
        ),
      ),
    );
  }
}