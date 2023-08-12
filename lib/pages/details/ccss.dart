// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class DetailsCcss extends StatefulWidget {
  const DetailsCcss({super.key});

  @override
  State<DetailsCcss> createState() => _DetailsCcssState();
}

class _DetailsCcssState extends State<DetailsCcss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60, left: 0, right: 0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(

              child: Row(
                children: [
                  IconButton(
                    iconSize: 45,
                    color: Colors.blueAccent,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                     icon: Icon(Icons.keyboard_arrow_left_outlined)
                     ),
                    Container(
                      child:  Text('Ciencias S.', style: TextStyle(fontSize: 35, color:Colors.blueAccent ),),
                    )
                ],
              ),
            ),
           Container(
            margin: EdgeInsets.only(left: 20),
            child:  Text('Esta sección ofrece libros de ciencia y tecnología para estudiantes de 1ero a 5to grado. Con ilustraciones y textos accesibles, abarcan diversos temas como física, química, biologia y otras asignaturas. Estos libros estimulan la curiosidad, fomentan el pensamiento crítico y despiertan el interés por la ciencia y la tecnología desde una edad temprana.'),
           ),
           SizedBox(height: 20,),
           Container(
            margin: EdgeInsets.only(left: 20),
            child: Text('Descargar PDF', style: TextStyle(fontSize: 23, color: Colors.grey),),
           ),
           SizedBox(height: 20,),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
               GestureDetector(
                onTap: (){},
                child:  Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/ccss/1.png"),
                      fit: BoxFit.cover
                      ),
                color: const Color.fromARGB(255, 255, 255, 255),
                      
                  ),
                  margin: EdgeInsets.only(left: 20, top: 0),
                  width: 150,
                height: 200,
                ),
               ),
               GestureDetector(
                onTap: (){},
                child:  Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/ccss/2.png"),
                      fit: BoxFit.cover
                      ),
                color: const Color.fromARGB(255, 255, 255, 255),
                      
                  ),
                  margin: EdgeInsets.only(left: 20, top: 0),
                  width: 150,
                height: 200,
                ),
               ),
               GestureDetector(
                onTap: (){},
                child:  Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/ccss/3.png"),
                      fit: BoxFit.cover
                      ),
                color: const Color.fromARGB(255, 255, 255, 255),
                      
                  ),
                  margin: EdgeInsets.only(left: 20, top:0),
                  width: 150,
                height: 200,
                ),
               ),
               GestureDetector(
                onTap: (){},
                child:  Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/ccss/4.png"),
                      fit: BoxFit.cover
                      ),
                color: const Color.fromARGB(255, 255, 255, 255),
                      
                  ),
                  margin: EdgeInsets.only(left: 20, top: 0),
                  width: 150,
                height: 200,
                ),
               ),
               GestureDetector(
                onTap: (){},
                child:  Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/ccss/5.png"),
                      fit: BoxFit.cover
                      ),
                color: const Color.fromARGB(255, 255, 255, 255),
                      
                  ),
                  margin: EdgeInsets.only(left: 20, top: 0),
                  width: 150,
                height: 200,
                ),
               ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text('Prohibida su venta', style: TextStyle(color: Colors.red, fontSize: 17),),
          )
          ],
        ),
      ),
    );
  }
}