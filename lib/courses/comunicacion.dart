// ignore_for_file: empty_statements, dead_code, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, must_be_immutable

import 'package:flutter/material.dart';
// import 'package:travel_sb/widget/app_large_text.dart';

class Comunicacion extends StatefulWidget {
  const Comunicacion({super.key});

  @override
  State<Comunicacion> createState() => _ComunicacionState();
}

class _ComunicacionState extends State<Comunicacion>  with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Comunicacion'),
      // ),
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
               color: Color.fromARGB(255, 221, 54, 54),
               icon: Icon(Icons.keyboard_arrow_left_sharp)
               ),
               Text('Comunicacion', style: TextStyle(color: Color.fromARGB(255, 221, 54, 54), fontSize: 35),)

               
            ],
           ),
           Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 25, right: 25),
                labelColor: Colors.black,
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 17),
                unselectedLabelColor: const Color.fromARGB(255, 191, 187, 187),
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: const Color.fromARGB(255, 221, 54, 54),
                tabs: [
                  Tab(
                    text: 'Basica',
                  ),
                  Tab(
                    text: 'Media',
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
              ComBasica(), 
              ComMedia(), 

            ]),
          )
          ],
        )
      ),
    );
  }
}

class ComBasica extends StatefulWidget {
  const ComBasica({super.key});
 

  @override
  State<ComBasica> createState() => _ComBasicaState();
}

class _ComBasicaState extends State<ComBasica> {
  @override
  Widget build(BuildContext context) {
     var basica= {
    "Tipos de texto":"a App SB",
    "Escribir tipos de texto":"En la educacion",
    "La Mejor":"En Camana ",
    "Mejoraremos la lectura ":"En Camana ",
    "Acentos":"En Camana ",
    "Rec. ideas principales":"En Camana ",
    "Escritura de poemas":"En Camana ",
  };
    return ListView.builder(
      itemCount: basica.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(136, 221, 54, 54),
            
          ),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(basica.keys.elementAt(index), style: TextStyle(fontSize: 23, color: const Color.fromARGB(255, 0, 0, 0))),
                  Text(basica.values.elementAt(index))
                ],
              ),
              IconButton(onPressed: (){},
              iconSize: 30,
               icon: Icon(Icons.keyboard_arrow_right_outlined)
               )
            ]
            ),
        );
      }
      );
  }
}

class ComMedia extends StatefulWidget {
  const ComMedia({super.key});

  @override
  State<ComMedia> createState() => _ComMediaState();
}

class _ComMediaState extends State<ComMedia> {
  @override
  Widget build(BuildContext context) {
     var basica= {
    "Ident. tipos de texto":"a App SB",
  };
    return  ListView.builder(
      itemCount: basica.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(136, 221, 54, 54),
            
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(basica.keys.elementAt(index), style: TextStyle(fontSize: 23, color: const Color.fromARGB(255, 0, 0, 0))),
                  Text(basica.values.elementAt(index))
                ],
              ),
              IconButton(onPressed: (){},
              iconSize: 30,
               icon: Icon(Icons.keyboard_arrow_right_outlined)
               )
            ]
            ),
        );
      }
      );;
  }
}