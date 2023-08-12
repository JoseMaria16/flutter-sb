// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Dpcc extends StatefulWidget {
  const Dpcc({super.key});

  @override
  State<Dpcc> createState() => _DpccState();
}

class _DpccState extends State<Dpcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dpcc'),
      ),
      body: Container(
        child: Center(
          child: Text('Hi'),
        ),
      ),
    );
  }
}