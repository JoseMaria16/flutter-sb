// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DetailsCyt extends StatefulWidget {
  const DetailsCyt({super.key});

  @override
  State<DetailsCyt> createState() => _DetailsCytState();
}

class _DetailsCytState extends State<DetailsCyt> {
  @override
  Widget build(BuildContext context) {
    var prueba = {
      "1": "",
      "3": "",
      "4": "",
    };
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
                    color: Colors.green,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                     icon: Icon(Icons.keyboard_arrow_left_outlined)
                     ),
                    Container(
                      child:  Text('Ciencia y T.', style: TextStyle(fontSize: 35, color:Colors.green ),),
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
                onTap: (){
              launchUrlString("https://pdfs-hcea3q58o-josemaria16.vercel.app/cyt/primero.html");
                },
                child:  Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/cyt/1.png"),
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
                      image: AssetImage("img/cyt/2.png"),
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
                      image: AssetImage("img/cyt/3.png"),
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
                      image: AssetImage("img/cyt/4.png"),
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
                      image: AssetImage("img/cyt/5.png"),
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