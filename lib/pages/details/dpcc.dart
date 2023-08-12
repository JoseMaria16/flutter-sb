// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailsDpcc extends StatefulWidget {
  const DetailsDpcc({super.key});

  @override
  State<DetailsDpcc> createState() => _DetailsDpccState();
}

class _DetailsDpccState extends State<DetailsDpcc> {
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
                    color: Colors.orange,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                     icon: Icon(Icons.keyboard_arrow_left_outlined)
                     ),
                    Container(
                      child:  Text('DPCC', style: TextStyle(fontSize: 35, color:Colors.orange ),),
                    )
                ],
              ),
            ),
           Container(
            margin: EdgeInsets.only(left: 20),
            child:  Text('Esta sección ofrece libros de desarrollo personal, ciudadanía y educación cívica para estudiantes de 1ero a 5to grado. Estas obras promueven habilidades sociales, valores ciudadanos y la participación activa en la sociedad desde una edad temprana.'),
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
                      image: AssetImage("img/dpcc/1.png"),
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
                      image: AssetImage("img/dpcc/2.png"),
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
                      image: AssetImage("img/dpcc/3.png"),
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
                      image: AssetImage("img/dpcc/4.png"),
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
                      image: AssetImage("img/dpcc/5.png"),
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