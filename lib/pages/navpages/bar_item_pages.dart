// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, library_private_types_in_public_api, unused_local_variable, sort_child_properties_last, empty_constructor_bodies, deprecated_member_use, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:travel_sb/courses/matematica.dart';
import 'package:travel_sb/pages/details/ccss.dart';
import 'package:travel_sb/pages/details/cyt.dart';
import 'package:travel_sb/pages/details/dpcc.dart';

import 'package:travel_sb/widget/app_large_text.dart';
import 'package:travel_sb/widget/app_text_courses.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
// import 'package:travel_sb/pages/navpages/library_page.dart';

class BarItemPage extends StatefulWidget {
  const BarItemPage({super.key});

  @override
  State<BarItemPage> createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage>
    with TickerProviderStateMixin {
  var images = {
    "https://facebook.com": "Sumérgete ",
    "welcome-1.png": "La mejor",
    "welcome-3.png": "Te ofrecemos",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          SizedBox(
            height: 60,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text('Bienvenido', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 152, 146, 146)),),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: AppLargeText(text: 'Biblioteca Virtual'),
          ),
          // Tab Bar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 25, right: 25),
                labelColor: Colors.black,
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 17),
                unselectedLabelColor: const Color.fromARGB(255, 191, 187, 187),
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: const Color.fromARGB(255, 52, 58, 142),
                tabs: [
                  Tab(
                    text: 'Minedu',
                  ),
                  Tab(
                    text: 'Obras',
                  ),
                  Tab(
                    text: 'Venta',
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 10,),
          Container(
            // margin: EdgeInsets.only(left: 0, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            width: double.maxFinite,
            height: 280,
            //  color: Colors.amber,
            child: TabBarView(controller: _tabController, children: [
              // Uno
              MineduBooks(),
              Obras(),
              Venta(),
            ]),
                
          ),
           SizedBox(
              height: 10,
                 ),
             Container(
              margin: EdgeInsets.only(left: 20),
              child: Text('Populares',
            style: TextStyle(
                fontSize: 27, color: const Color.fromARGB(255, 52, 58, 142))),
             ),
        ],
      ),
    ));
  }
}

class MineduBooks extends StatelessWidget {
  const MineduBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsCyt()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0,
                              2), // Desplazamiento de la sombra en el eje X y Y
                          blurRadius: 4, // Radio de desenfoque de la sombra
                          spreadRadius: 2, // Radio de expansión de la sombra
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage("img/1.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                ],
              ),
            ),
             GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsDpcc()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0,
                              2), // Desplazamiento de la sombra en el eje X y Y
                          blurRadius: 4, // Radio de desenfoque de la sombra
                          spreadRadius: 2, // Radio de expansión de la sombra
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage("img/librodpcc.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsCcss()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0,
                              2), // Desplazamiento de la sombra en el eje X y Y
                          blurRadius: 4, // Radio de desenfoque de la sombra
                          spreadRadius: 2, // Radio de expansión de la sombra
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage("img/ccss/3.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                ],
              ),
            ),
            
          ]),
        ),
       
      ],
    );
  }
}

class Obras extends StatelessWidget {
  const Obras({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Venta extends StatelessWidget {
  const Venta({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

