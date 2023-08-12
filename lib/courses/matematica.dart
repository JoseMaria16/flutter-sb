// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, deprecated_member_use, no_leading_underscores_for_local_identifiers, prefer_final_fields, prefer_interpolation_to_compose_strings


import 'package:flutter/material.dart';
// import 'package:travel_sb/screens/suma_resta.dart';
import 'package:travel_sb/widget/app_large_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

// final Uri _areasUrl = Uri.parse('https://www.youtube.com/watch?v=TZDgCnfDrIE');
final Uri _url = Uri.parse('https://www.youtube.com/watch?v=TZDgCnfDrIE');

class Matematica extends StatefulWidget {
  const Matematica({super.key});

  @override
  State<Matematica> createState() => _MatematicaState();
}

class _MatematicaState extends State<Matematica>  with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 6, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: 
        Container(
        margin: EdgeInsets.symmetric(horizontal: 0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          
          // SizedBox(
          //   height: 20,
          // ),
          Container(
            // width: ,
            margin: EdgeInsets.only(top: 60, left: 0, right: 0, bottom: 10),
            child: Row(
              children: [
                IconButton(onPressed: () {
                  Navigator.pop(context);
                },
                iconSize: 40,
                 icon: Icon(Icons.keyboard_arrow_left_rounded)
                ),
                AppLargeText(text: 'Matematica')
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 25, right: 0),
                labelColor: Colors.black,
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 17),
                unselectedLabelColor: const Color.fromARGB(255, 191, 187, 187),
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: const Color.fromARGB(255, 52, 58, 142),
                tabs: [
                  Tab(
                    text: 'Aritmética',
                  ),
                  Tab(
                    text: 'Álgebra',
                  ),
                  Tab(
                    text: 'Geometría',
                  ),
                  Tab(
                    text: ' Trigonometría',
                  ),
                  Tab(
                    text: 'Geo. Analítica',
                  ),
                  Tab(
                    text: 'Estidistica y Prob.',
                  ),
                ],
              ),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(left: 0, top: 20),
            padding: EdgeInsets.only(left: 0,right: 0),
            width: double.maxFinite,
            height: 650,
            //  color: Colors.amber,
            child: TabBarView(controller: _tabController, children: [
              // Uno
              
              Aritmetica(), 
              Algebra(), 
             Geometria(), 
             Trigo(), 
              GeoAnalitica(), 
              Estadistica(), 

            ]),
          )
        ],
      ),
      ),
      )
    );
  }
}


class Aritmetica extends StatefulWidget {
  const Aritmetica({super.key});

  @override
  State<Aritmetica> createState() => _AritmeticaState();
}

class _AritmeticaState extends State<Aritmetica> {
  @override
  Widget build(BuildContext context) {
    var basica = {
      "Números naturales": "Daniel Carreón",
      "Números enteros": "Aprendiendo Matematica YT",
      "Números racionales": "Daniel Carreón",
      "Números decimales": "Matematicas prf Alex",
      "Números irracionales": "Math for all",
      "Proporciones y razones.": "Daniel Carreón",
      "Porcentajes ": "Matematicas prf Alex",
      "Regla de tres simple ": "Daniel Carreón",
    };
     var link = {
      "Números naturales": "https://www.youtube.com/watch?v=hd5qnZfGO1c ",
      "Números enteros": "https://www.youtube.com/watch?v=5HE66809NYI ",
      "Números racionales": "https://www.youtube.com/watch?v=ql3lLSwsr98  ",
      "Números decimales": "https://www.youtube.com/watch?v=fae6X1jg3nE ",
      "Números irracionales": "https://www.youtube.com/watch?v=HgW2ErVQj-Q   ",
      "Proporciones y razones.": "https://www.youtube.com/watch?v=3eYwW4sDlxM",
      "Porcentajes ": "https://www.youtube.com/watch?v=PjXpBwI6P0M  ",
      "Regla de tres simple ": "https://www.youtube.com/watch?v=Xphb-tzJj24&t=126s",
    };
    return  ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              launchUrlString(link.values.elementAt(index));
            },
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  Color.fromARGB(96, 1, 18, 255),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        basica.keys.elementAt(index),
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromARGB(255, 0, 0, 0))),
                      Text(
                        "Crdts: "+basica.values.elementAt(index))
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: Icon(Icons.keyboard_arrow_right_outlined))
                ]),
          )
          );
        });
  }
}


class Algebra extends StatefulWidget {
  const Algebra({super.key});

  @override
  State<Algebra> createState() => _AlgebraState();
}

class _AlgebraState extends State<Algebra> {
   var basica = {
      "Expresiones algebraicas": "Daniel Carreón",
      "Polinomios": "Matematicas prf Alex",
      "Ecuaciones primer grado": "Matematicas prf Alex",
      "Sistemas de ecuaciones": "Fun and easy",
      "Inecuaciones": "Matematicas prf Alex",
      "Productos notables": "Matematicas prf Alex",
      "Factorización": "Matematicas prf Alex",
    };
     var info = {
      "términos, coeficientes y exponentes.": "https://www.youtube.com/watch?v=UNWFLuUfiX4",
      "clasificion, grados, tipos, etc": "https://www.youtube.com/watch?v=vvIYwabU1lw ",
      "resoluc. de ecuaciones con una variable.": "https://www.youtube.com/watch?v=lolGRSlyY5E ",
      "dos ecuaciones con dos variables.": "https://www.youtube.com/watch?v=P_NBQQzM1UU",
      "representación gráfica de desigualdades.": "https://www.youtube.com/watch?v=y9vDsarVxtg ",
      "cuadrado de un binomio, etc..": "https://www.youtube.com/watch?v=G-ym95yl3Es",
      "concep. basicos": "https://www.youtube.com/watch?v=sSfO1CsKJ4g ",
    };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              launchUrlString(info.values.elementAt(index));
            },
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  Color.fromARGB(96, 1, 18, 255),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        basica.keys.elementAt(index),
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromARGB(255, 0, 0, 0))),
                      Text(info.keys.elementAt(index)),
                      Text(
                        "Crdts: "+basica.values.elementAt(index))
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



class Geometria extends StatefulWidget {
  const Geometria({super.key});

  @override
  State<Geometria> createState() => _GeometriaState();
}

class _GeometriaState extends State<Geometria> {
  var basica = {
      "Puntos, líneas y planos": "math2me",
      "Ángulos": "Daniel Carreón",
      "Triángulos": "Daniel Carreón",
      "Cuadriláteros": "Daniel Carreón",
      "Polígonos": "David Man",
      "Áreas y perímetros": "Daniel Carreón",
      "Volúmenes y superficies": "Daniel Carreón",
      "Transfor. geométricas": "Profe Laura Buitrago",
      "Congruencia y semejanza": "Daniel Carreón",
      "Teorema de Tales": "Matematicas prf Alex",
    };
     var info = {
      "conceptos básicos de geometría.": "https://www.youtube.com/watch?v=LIrHcJAmplo ",
      "medida de ángulos y suma de ángulos.": "https://www.youtube.com/watch?v=4KTKDMRZufE",
      "clasificación, propiedades y teoremas": "https://www.youtube.com/watch?v=I9S1kBXLkBo ",
      "tipos de cuadriláteros": "https://www.youtube.com/watch?v=GBl62iBnQzg&t=14s ",
      "regulares e irregulares.": "https://www.youtube.com/watch?v=yQ7i46pCLiE  ",
      "triángulos, cuadriláteros, círculos, etc.": "https://www.youtube.com/watch?v=wYNvY_bOGdc",
      "prismas, pirámides, cilindros, etc": "https://www.youtube.com/watch?v=n0j1XwaroHs&t=352s",
      "reflexion, rotacion, traslacion, etc": "https://www.youtube.com/watch?v=XfPEGMgBXiM ",
      "criterios de congruencia y semejanza.": "https://www.youtube.com/watch?v=XfgjRt_MtYI",
      " factor común y por agrupaci.": "https://www.youtube.com/watch?v=JGyYSzhCxFA ",
    };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              launchUrlString(info.values.elementAt(index));
            },
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  Color.fromARGB(96, 1, 18, 255),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        basica.keys.elementAt(index),
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromARGB(255, 0, 0, 0))),
                      Text(info.keys.elementAt(index)),
                      Text(
                        "Crdts: "+basica.values.elementAt(index))
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: Icon(Icons.keyboard_arrow_right_outlined))
                ]),
          )
          );
        });
  }
}

class Trigo extends StatefulWidget {
  const Trigo({super.key});

  @override
  State<Trigo> createState() => _TrigoState();
}

class _TrigoState extends State<Trigo> {
   var basica = {
      "Teorema de Pitagoras": "Daniel Carreón",
      "Razones trigonométricas": "Matemovil",
      "Triangulos notables": "Matemovil",
      "Ángulos verticales": "Matematica prf Alex",
      "Identidades Reciprocas": "Matematica prf Alex",
      "Identidades Pitagoricas": "Matematica prf Alex",
    };
     var info = {
      "hipotenusa, catetos": "https://www.youtube.com/watch?v=eTEBvBIz8Ok ",
      "seno, coseno y tangente.": "https://www.youtube.com/watch?v=rj0kkRM-JsM&t=229s",
      "53° y 37°, 30° y 60°, etc..": "https://www.youtube.com/watch?v=Vqtn4erKlUE&t=4s",
      "elevación y depresión": "https://www.youtube.com/watch?v=3FjBlgSSlok&t=124s",
      "ej: sen a = 1 / cos a": "https://www.youtube.com/watch?v=3FjBlgSSlok&t=124s",
      "ej: sen2a + cos2a = 1 ": "https://www.youtube.com/watch?v=jDAsavdm7Mc",
    };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              launchUrlString(info.values.elementAt(index));
            },
            child:Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  Color.fromARGB(96, 1, 18, 255),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        basica.keys.elementAt(index),
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromARGB(255, 0, 0, 0))),
                      Text(info.keys.elementAt(index)),
                      Text(
                        "Crdts:"+basica.values.elementAt(index))
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: Icon(Icons.keyboard_arrow_right_outlined))
                ]),
          ) ,
          );
        });
  }
}


class GeoAnalitica extends StatefulWidget {
  const GeoAnalitica({super.key});

  @override
  State<GeoAnalitica> createState() => _GeoAnaliticaState();
}

class _GeoAnaliticaState extends State<GeoAnalitica> {
  var basica = {
      "Coordenadas cartesianas": "Daniel Carreón",
      "Dist. entre dos puntos": "Matematicas prf Alex",
      "Punt. medio": "Matematicas prf Alex",
      "Pendiente de una recta": "Matematicas prf Alex",
      "Elipse": "Math Rocks",
      "Parábola": "Matematicas prf Alex",
      "Hipérbola:": "MateFacil",
    };
     var info = {
      "en plano cartesiano": "https://www.youtube.com/watch?v=kzOzYY-T-50 ",
      "de un segmento": "https://www.youtube.com/watch?v=kDzTTOvv5dc ",
      "de un segmento.": "https://www.youtube.com/watch?v=qzRxsVoUaMo ",
      "": "https://www.youtube.com/watch?v=QAWt1CAYKr4",
      "ecuación general y ecuación ordinaria": "https://www.youtube.com/watch?v=6x-UGx6m9aM",
      "ecuación general, ecuación ordinaria": "https://www.youtube.com/watch?v=FlsYCYbmJGU",
      "ecuación general - ecuación ordinaria": "https://www.youtube.com/watch?v=odtncsjLt0I ",
    };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              launchUrlString(info.values.elementAt(index));
            },
            child:  Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  Color.fromARGB(96, 1, 18, 255),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        basica.keys.elementAt(index),
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromARGB(255, 0, 0, 0))),
                      Text(info.keys.elementAt(index)),
                      Text(
                        "Crdts: "+basica.values.elementAt(index))
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

class Estadistica extends StatefulWidget {
  const Estadistica({super.key});

  @override
  State<Estadistica> createState() => _EstadisticaState();
}

class _EstadisticaState extends State<Estadistica> {
  var basica = {
      "Datos": "",
      "Tendencia central": "",
      "Medidas de dispersión": "Math2kid",
      "Regla de LaPlace": "Archimedes Tube",
    };
     var info = {
      "tablas de frecuencia y gráficos": "https://www.youtube.com/watch?v=JtB2w0QLRZ4&t=77s",
      "media, mediana y moda": "https://www.youtube.com/watch?v=0DA7Wtz1ddg",
      "rango, desviación estándar, etc": "https://www.youtube.com/watch?v=pLPKjLfjRYE ",
      "casos favorables y casos totales": "https://www.youtube.com/watch?v=52dHFBQCgnk",
    };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              launchUrlString(info.values.elementAt(index));
            },
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  Color.fromARGB(96, 1, 18, 255),
            ),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        basica.keys.elementAt(index),
                          style: TextStyle(
                              fontSize: 23,
                              color: const Color.fromARGB(255, 0, 0, 0))),
                      Text(info.keys.elementAt(index)),
                      Text(
                        "Crdts: "+basica.values.elementAt(index))
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