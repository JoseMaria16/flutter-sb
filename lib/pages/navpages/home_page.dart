// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_import, unused_element, no_leading_underscores_for_local_identifiers, unused_local_variable, unrelated_type_equality_checks


import 'package:flutter/material.dart';
import 'package:travel_sb/courses/ciencia.dart';
import 'package:travel_sb/courses/comunicacion.dart';
import 'package:travel_sb/courses/dpcc.dart';
import 'package:travel_sb/courses/ept.dart';
import 'package:travel_sb/courses/ingles.dart';
import 'package:travel_sb/courses/matematica.dart';
import 'package:travel_sb/courses/religion.dart';
import 'package:travel_sb/courses/sociales.dart';
import 'package:travel_sb/quizz/quiz_africa.dart';
import 'package:travel_sb/quizz/quiz_ciencias.dart';
import 'package:travel_sb/quizz/quiz_europ.dart';
import 'package:travel_sb/quizz/quiz_simbolos.dart';
import 'package:travel_sb/widget/app_large_text.dart';
import 'package:travel_sb/widget/app_text_courses.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../quizz/quiz_capitales.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Internet(),
    );
  }
}
class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('NO TIENES INTERNET'),
    );
  }
}
class Internet extends StatefulWidget {
  const Internet({super.key});

  @override
  State<Internet> createState() => _InternetState();
}

class _InternetState extends State<Internet>  with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 70.0, left: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                      iconSize: 35,
                      color: const Color.fromARGB(255, 52, 58, 142),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.grey,
                    ),
                    child: Image(
                      image: AssetImage("img/logo.png"),
                    ),
                  )
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: AppLargeText(text: '!Explora ya!'),
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
                    text: 'Cursos',
                  ),
                  Tab(
                    text: 'Mini Juegos',
                  ),
                  Tab(
                    text: 'Emprendimientos',
                  )
                ],
              ),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(left: 0, top: 20),
            padding: EdgeInsets.only(left: 20,right: 20),
            width: double.maxFinite,
            height: 500,
            //  color: Colors.amber,
            child: TabBarView(controller: _tabController, children: [
              // Uno
              Cursos(),
              MiniJuegos(),
              Emprendimientos(),

            ]),
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

class Cursos extends StatelessWidget {
  const Cursos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Matematica()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),

                    width: 150,
                    height: 100,
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
                          image: AssetImage("img/mate-course.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextCourses(text: 'Matematica'),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Comunicacion()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),

                    width: 150,
                    height: 100,
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
                          image: AssetImage("img/com-course.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextCourses(text: 'Comunicacion'),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CienciaTecnologia()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),

                    width: 150,
                    height: 100,
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
                          image: AssetImage("img/cyt-course.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextCourses(text: 'Ciencia y T.'),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CienciasSociales()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),

                    width: 150,
                    height: 100,
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
                          image: AssetImage("img/soc-course.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextCourses(text: 'Ciencias S.'),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ingles()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),

                    width: 150,
                    height: 100,
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
                          image: AssetImage("img/ing-course.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextCourses(text: 'Ingles'),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Religion()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),

                    width: 150,
                    height: 100,
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
                          image: AssetImage("img/rel-course.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextCourses(text: 'Religion'),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dpcc()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),

                    width: 150,
                    height: 100,
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
                          image: AssetImage("img/dpcc-course.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextCourses(text: 'DPCC'),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ept()),
                );
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),

                    width: 150,
                    height: 100,
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
                          image: AssetImage("img/ept-course.png"),
                          fit: BoxFit.cover),
                    ),

                    // color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextCourses(text: 'EPT'),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Text('Extras',
            style: TextStyle(
                fontSize: 27, color: const Color.fromARGB(255, 52, 58, 142))),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: const Color.fromARGB(255, 239, 233, 232),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Club de Ciencias', style: TextStyle(fontSize: 25,),),
                    IconButton(onPressed: (){},
                    iconSize: 35,

                     icon: Icon(Icons.keyboard_arrow_right_outlined)
                     )
                  ],
                ),
              ),
               Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: const Color.fromARGB(255, 239, 233, 232),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text('Taller de Danza', style: TextStyle(fontSize: 25,),),
                    IconButton(onPressed: (){},
                    iconSize: 35,

                     icon: Icon(Icons.keyboard_arrow_right_outlined)
                     )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class MiniJuegos extends StatelessWidget {
  const MiniJuegos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(height: 10,),
        Text('Capitales', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 52, 58, 142)),),
        SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizzCapitales()),
              );
              },
              child: Column(
              children: [
                Container(
                  
                  width: 100,
                  height: 90,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('img/america.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                    
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextCourses(text: 'America'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizzEuropa()),
              );
              },
              child: Column(
              children: [
                Container(
                  width: 100,
                  height: 90,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                     image: DecorationImage(
                      image: AssetImage('img/europa.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextCourses(text: 'Europa'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            ), 
            GestureDetector(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizzAfrica()),
              );
              },
              child: Column(
              children: [
                Container(
                  width: 100,
                  height: 90,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                     image: DecorationImage(
                      image: AssetImage('img/africa.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextCourses(text: 'Africa-Asia'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            ),  
          ]),
        ),
         Text('¿Fue el Padre y fecha de?', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 52, 58, 142)),),
        SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizzCiencias()),
              );
              },
              child: Column(
              children: [
                Container(
                  width: 100,
                  height: 90,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('img/quizciencia.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextCourses(text: 'Ciencias'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizzCapitales()),
              );
              },
              child: Column(
              children: [
                Container(
                  width: 100,
                  height: 90,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                     image: DecorationImage(
                      image: AssetImage('img/literatura.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextCourses(text: 'Literatura'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            ),  
          ]),
        ),
         Text('Tabla Periodica', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 52, 58, 142)),),
        SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
            GestureDetector(
              onTap: () {
                
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizzSimbolos()),
              );
              },
              child: Column(
              children: [
                Container(
                  width: 100,
                  height: 90,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('img/simbolos.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextCourses(text: 'Simbolo'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizzCapitales()),
              );
              },
              child: Column(
              children: [
                Container(
                  width: 100,
                  height: 90,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('img/grupos.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextCourses(text: 'Grupo'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            ), 
             GestureDetector(
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizzCapitales()),
              );
              },
              child: Column(
              children: [
                Container(
                  width: 100,
                  height: 90,
                  margin: EdgeInsets.only(right: 15),
                   decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('img/nomenclaturas.png'),
                      fit: BoxFit.cover,
                      ),
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextCourses(text: 'Nomenclaturas'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            ), 
          ]),
        ),
       
      ],
    );
  }
}

class Emprendimientos extends StatelessWidget {
  const Emprendimientos({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
        children: [
         Container(
          
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10) ,
          decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 254, 254),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 191, 183, 183),
              width: 1
            )
          ),
          child:  Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('Snacks Naturales', style: TextStyle(fontSize: 18,color: Colors.red),),
                     Text('De: Piero Gutierrez'),
                  ],
                 )
                ],
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
         ),
         Container(
          
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10) ,
          decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 254, 254),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 191, 183, 183),
              width: 1
            )
          ),
          child:  Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('Audifonos y Relojes', style: TextStyle(fontSize: 18,color: Colors.red),),
                     Text('De: Reimond Medina'),
                  ],
                 )
                ],
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
         ),
          Container(
          
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10) ,
          decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 254, 254),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 191, 183, 183),
              width: 1
            )
          ),
          child:  Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('WebSites y Apps Mobiles', style: TextStyle(fontSize: 18,color: Colors.red),),
                     Text('De: JoseMaria Jauregui'),
                  ],
                 )
                ],
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
         ),
        ],
      ),
      ) 
    );
  }
}