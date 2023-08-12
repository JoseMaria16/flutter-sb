// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class Religion extends StatefulWidget {
  const Religion({super.key});

  @override
  State<Religion> createState() => _ReligionState();
}

class _ReligionState extends State<Religion> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
    
      body: Container(
        margin: EdgeInsets.only(top: 60, left: 0, right: 20),
        child: Column(
          children: [
           Row(
            children: [
              IconButton(
               onPressed: () {
                Navigator.pop(context);
               },
               iconSize: 50,
               color:Color.fromARGB(255, 108, 172, 118),
               icon: Icon(Icons.keyboard_arrow_left_sharp)
               ),
               Text('Ciencia y T.', style: TextStyle(color: Color.fromARGB(255, 108, 172, 118), fontSize: 35),)
               
            ],
           ),
           Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 25, right: 15),
                labelColor: Colors.black,
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 17),
                unselectedLabelColor: const Color.fromARGB(255, 191, 187, 187),
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Color.fromARGB(255, 108, 172, 118),
                tabs: [
                  Tab(
                    text: 'Biología',
                  ),
                  Tab(
                    text: 'Química',
                  ),
                   Tab(
                    text: 'Física',
                  ), Tab(
                    text: 'TIC',
                  ),
                 
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            // margin: EdgeInsets.only(left: 0, top: 20),
            padding: EdgeInsets.only(left: 20,right: 20),
            width: double.maxFinite,
            height: 600,
            //  color: Colors.amber,
            child: TabBarView(controller: _tabController, children: [
              // Uno
              Text('DSD'),
              Text('DSD'),
              Text('DSD'),
              Text('DSD'),

            ]),
          )
          ],
        )
      ),
    );
  }
}