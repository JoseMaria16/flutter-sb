// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MineduLibros extends StatefulWidget {
  const MineduLibros({super.key});

  @override
  State<MineduLibros> createState() => _MineduLibrosState();
}

class _MineduLibrosState extends State<MineduLibros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Libros Minedu'),
      ),
      body: Container(
        child: Center(
          child: Text('Hi'),
        ),
      ),
    );
  }
}