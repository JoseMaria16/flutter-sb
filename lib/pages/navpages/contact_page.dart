// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_sb/widget/app_large_text.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse("https://wa.me/51969721673");

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLargeText(text: 'Administradores'),
           Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 221, 221),
                borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 15),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Direccion', style: TextStyle(fontSize: 25)),
                          Text('Ivonne Granda', style: TextStyle(fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    iconSize: 40,
                   onPressed: (){},
                   icon: Icon(Icons.keyboard_arrow_right_rounded)
                   )
                ],
              ),
              ),
              Container(
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 221, 221),
                borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 15),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SubDireccion', style: TextStyle(fontSize: 25)),
                          Text('Oscar Villena', style: TextStyle(fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    iconSize: 40,
                   onPressed: (){},
                   icon: Icon(Icons.keyboard_arrow_right_rounded)
                   )
                ],
              ),
              ),
              
              SizedBox(height: 10,),
              AppLargeText(text: 'Creadores'),
                GestureDetector(
                onTap: (){},
                child:  Container(
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 221, 221),
                borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 15),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Diseñador Graf.', style: TextStyle(fontSize: 25)),
                          Text('Adrian Angulo Arisaca', style: TextStyle(fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    iconSize: 40,
                   onPressed: (){},
                   icon: Icon(Icons.keyboard_arrow_right_rounded)
                   )
                ],
              ),
              ),
              ),
              GestureDetector(
                onTap: (){},
                child:  Container(
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 221, 221),
                borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 15),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Investigador', style: TextStyle(fontSize: 25)),
                          Text('Briith Alvis Escobar', style: TextStyle(fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    iconSize: 40,
                   onPressed: (){},
                   icon: Icon(Icons.keyboard_arrow_right_rounded)
                   )
                ],
              ),
              ),
              ),
              GestureDetector(
                onTap: (){
                  _launchUrl();
                },
                child:  Container(
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 221, 221),
                borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 15),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Programador', style: TextStyle(fontSize: 25)),
                          Text('JoseMaria Jauregui Rivas', style: TextStyle(fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    iconSize: 40,
                   onPressed: (){},
                   icon: Icon(Icons.keyboard_arrow_right_rounded)
                   )
                ],
              ),
              ),
              ),
               GestureDetector(
                onTap: (){},
                child:  Container(
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 221, 221),
                borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 15),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Extras', style: TextStyle(fontSize: 25)),
                          Text('Tutores - Inversores', style: TextStyle(fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    iconSize: 40,
                   onPressed: (){},
                   icon: Icon(Icons.keyboard_arrow_right_rounded)
                   )
                ],
              ),
              ),
              )
            ],
          ),
          
           )
        ],
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
} 