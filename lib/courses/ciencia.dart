// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CienciaTecnologia extends StatefulWidget {
  const CienciaTecnologia({super.key});

  @override
  State<CienciaTecnologia> createState() => _CienciaTecnologiaState();
}

class _CienciaTecnologiaState extends State<CienciaTecnologia>
    with TickerProviderStateMixin {
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
                      color: Color.fromARGB(255, 108, 172, 118),
                      icon: Icon(Icons.keyboard_arrow_left_sharp)),
                  Text(
                    'Ciencia y T.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 108, 172, 118),
                        fontSize: 35),
                  )
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
                    unselectedLabelColor:
                        const Color.fromARGB(255, 191, 187, 187),
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
                      ),
                      Tab(
                        text: 'TIC',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // margin: EdgeInsets.only(left: 0, top: 20),
                padding: EdgeInsets.only(left: 0, right: 0),
                width: double.maxFinite,
                height: 600,
                //  color: Colors.amber,
                child: TabBarView(controller: _tabController, children: [
                  // Uno
                  CytBasica(),
                  CytMedia(),
                  Fisica(),
                  TIC(),
                ]),
              )
            ],
          )),
    );
  }
}

class CytBasica extends StatefulWidget {
  const CytBasica({super.key});

  @override
  State<CytBasica> createState() => _CytBasicaState();
}

class _CytBasicaState extends State<CytBasica> {
  @override
  Widget build(BuildContext context) {
    var basica = {
      "Introd. a la Biología": "¡Que es? ",
      "Método científico": "observacion , plantamiento del pro...",
      "Estructura celular": "células procariotas y eucariotas. ",
      "Sistemas del Cuerpo": "digestivo, circulatorio, respiratorio, etc.",
      "La Genética": "herencia y variabilidad genética.",
      "Ecosistemas": "y su impacto en la sociedad ",
      "Clas. seres vivos": "taxonomia y biodiversidad",
      "Fotosintesis": "de materia inorgánica a organica",
      "Reproducción": "sexual y asexual",
      "Nutrición": "alimentación y metabolismo.",
      "Microbiología": "estudio de los microorganismos.",
      "Homeostasis": "mantener un ambiente interno estable",
    };
    var link = {
      "https://www.youtube.com/watch?v=XViBPvJAaxI": "En minutos",
      "https://www.youtube.com/watch?v=hJOypWMQqvs": "Es Ciencia",
      "https://www.youtube.com/watch?v=jA304XMU3pM": "Es ciencia",
      "https://www.youtube.com/watch?v=6Unfqpy_oJY": "A Cierta Ciencia",
      "https://www.youtube.com/watch?v=nmZP7BeN1vk": "Mangel Ciencia",
      "https://www.youtube.com/watch?v=3LeeVif_qSQ": "Ecologia Verde",
      "https://www.youtube.com/watch?v=vhuuIVfsdcw": "A cierta Ciencia",
      "https://www.youtube.com/watch?v=d2DB-kWxg-w": "A Cierta Ciencia",
      "https://www.youtube.com/watch?v=3zQAy37UTiw": "A Cierta Ciencia",
      "https://www.youtube.com/watch?v=Kt2fASy7s6o": "A Cierta Ciencia",
      "https://www.youtube.com/watch?v=MSn72af7Jmc ": "Dante BiotEC",
      "https://www.youtube.com/watch?v=yKQGn1yqfr8 ": "A Cierta Ciencia",
    };
    return ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              launchUrlString(link.keys.elementAt(index));
            },
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(157, 108, 172, 118),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(basica.keys.elementAt(index),
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromARGB(255, 0, 0, 0))),
                      Text(basica.values.elementAt(index)),
                      Text("Crdts: "+link.values.elementAt(index)),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: Icon(Icons.keyboard_arrow_right_outlined))
                ]),
          ),
          );
        });
  }
}

class CytMedia extends StatefulWidget {
  const CytMedia({super.key});

  @override
  State<CytMedia> createState() => _CytMediaState();
}

class _CytMediaState extends State<CytMedia> {
  @override
  Widget build(BuildContext context) {
    var basica = {
      "Introd. a la química": "concep. básicos y métodos de estudio.",
      "Estructura del átomo": "protones, neutrones, electrones, etc",
      "Tabla periódica": " clasificación y propiedades",
      "Enlaces químicos": "iónico, covalente y metálico.",
      "Reacciones químicas": "balanc. de ecuaciones y tipos de reac..",
      "Ácidos y bases": "propiedades, pH y reacc.. ácido-base.",
      "Química de alimento": "compos.. y procesos en la cocina.",
      "Cinética química": "velocidad de las reacciones y factores",
      "Equilibrio químico": "equilibrio - constante y desplazamiento",
    };
     var link = {
      "https://www.youtube.com/watch?v=DEwt09iSTY0": "Es Ciencia",
      "https://www.youtube.com/watch?v=L4dKhjnj3gw": "Es Ciencia",
      "https://www.youtube.com/watch?v=60go-4haeXw": "Al fin entendí YT",
      "https://www.youtube.com/watch?v=9Oljha_Syv8 ": "A Cierta Ciencia",
      "https://www.youtube.com/watch?v=W244hx2W-qs": "A Cierta Ciencia",
      "https://www.youtube.com/watch?v=5CdL1UVrXqc ": "Es Ciencia",
      "https://www.youtube.com/watch?v=ScqCLYrSzgU ": "Canal Encuentro",
      "https://www.youtube.com/watch?v=XkeORGE5cOE": "Es Ciencia",
      "https://www.youtube.com/watch?v=tshFfHS11po": "Al fin entendí",
    
    };
    return ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              launchUrlString(link.keys.elementAt(index));
            },
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(157, 108, 172, 118),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(basica.keys.elementAt(index),
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromARGB(255, 0, 0, 0))),
                      Text(basica.values.elementAt(index)),
                      Text("Crdts: "+link.values.elementAt(index)),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: Icon(Icons.keyboard_arrow_right_outlined))
                ]),
          ),
          );
        });
  }
}


class Fisica extends StatefulWidget {
  const Fisica({super.key});

  @override
  State<Fisica> createState() => _FisicaState();
}

class _FisicaState extends State<Fisica> {
   var basica = {
      "Introd. a la física": "concep. básicos y métodos de estudio",
      "Cinemática": "MRU - MRUV, etc",
      "MRU": "el movimiento rectilíneo uniforme",
      "MRUV": "movim.. rectilíneo uniformemente variado",
      "Leyes de Newton": "primera, segunda y tercera ley",
      "Fuerza y movimiento": "fuerzas, fricción, etc..",
      "Electricidad:": "cargas eléctricas, corriente, voltaje, etc",
      "Circuitos eléctricos": "ley de Ohm, corriente y voltaje, etc",
      "Magnetismo": "camp. magnéticos, imanes, etc",
      "Ondas": "tip de ondas, frecuencia, longitud, etc",
      "Termodinámica": "calor, temperatura, cambios de fase,etc",
      "Leyes - Termodinámica": "tip de ondas, frecuencia, longitud, etc",
      "Relatividad": " teoría de la relatividad especial, etc",
    };
     var link = {
      "https://www.youtube.com/watch?v=T5tUwQVW3vw": "Lifider Education",
      "https://www.youtube.com/watch?v=S5wctMSPIV0": "Lifider Educación",
      "https://www.youtube.com/watch?v=ylErHxQjodw&list=PLeySRPnY35dF7yGgUKWV2L-03TK1TlBNY&index=2": "Matematicas prf Alex",
      "https://www.youtube.com/watch?v=_HVgknQ1CXQ&list=PLeySRPnY35dGlWnfMQ-xC_qtn-xO5RWcF": "Matematicas prf Alex",
      "https://www.youtube.com/watch?v=S3QlbbUmszE": "Matemóvil",
      "https://www.youtube.com/watch?v=bv89Bs187aU&t=54s": " Elesapiens",
      "https://www.youtube.com/watch?v=KHaNzKgfzpM ": "Prf. Luis Lehrer",
      "https://www.youtube.com/watch?v=ldYGzOKGgpE ": "Prof. Luis Lehrer",
      "https://www.youtube.com/watch?v=Zo_mBkio-kY ": "A Cierta Ciencia",
      "https://www.youtube.com/watch?v=0EPA36B6PTQ ": "A Cierta Ciencia",
      "https://www.youtube.com/watch?v=RUDPDjzWKao&t=5s ": " Pon un ing. en tu vida YT",
      "https://www.youtube.com/watch?v=Bvfn6eUhUAc ": "QuantumFracture",
      "https://www.youtube.com/watch?v=HVbWtwQLHKk": "CuriosaMente",  
    
    };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              launchUrlString(link.keys.elementAt(index));
            },
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(157, 108, 172, 118),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(basica.keys.elementAt(index),
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromARGB(255, 0, 0, 0))),
                      Text(basica.values.elementAt(index)),
                      Text("Crdts: "+link.values.elementAt(index)),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: Icon(Icons.keyboard_arrow_right_outlined))
                ]),
          ),
          );
        });
  }
}


class TIC extends StatefulWidget {
  const TIC({super.key});

  @override
  State<TIC> createState() => _TICState();
}

class _TICState extends State<TIC> {
  @override
  Widget build(BuildContext context) {
     var basica = {
      "Introd. a las TIC:": "concep. básicos y evoluc. tecnologíca",
      "Uso responsable": "ética digital y seguridad en línea.",
      "Herr. de productividad": "Word - Excel, Power Point",
      "Programación": "introd. a la lógica de programación",
      "Diseño y edición digital": "creación de gráficos, imágenes, etc.",
      "Desarrollo Web": "creación de sitios web simples.",
      "Desarrollo App": "creacion de apps, Android y IOS",
      "Inteligencia artificial": "concep. básicos y uso en la vida diaria",
    };
      var link = {
      "https://www.youtube.com/watch?v=WLsTzYBFb8I ": "TICnoticos",
      "https://www.youtube.com/watch?v=Pu9V6WpO8-Q": "Gustavo Dialgo",
      "https://www.youtube.com/watch?v=x9lJiQQZmI8&t=206s ": "ISNR NosConecta",
      "https://www.youtube.com/watch?v=7vbi-OCFZEY  ": "Maestro de la Computación",
      "https://www.youtube.com/watch?v=0FRMpuCtUAw": " Movimiento Digital",
      "https://www.youtube.com/watch?v=6tfgKv93C_Q&t=476s ": " Programador X",
      "https://www.youtube.com/watch?v=fU8wT6qYw7A&t=402s ": "Fazt",
      "https://www.youtube.com/watch?v=fsxfPDOznXE": "AuraQuantic",
    
    };
    return ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              launchUrlString(link.keys.elementAt(index));
            },
            child:  Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(157, 108, 172, 118),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(basica.keys.elementAt(index),
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromARGB(255, 0, 0, 0))),
                      Text(basica.values.elementAt(index)),
                      Text("Crdts: "+link.values.elementAt(index)),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: Icon(Icons.keyboard_arrow_right_outlined))
                ]),
          ),
          );

        });
  }
}