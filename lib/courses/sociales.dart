// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CienciasSociales extends StatefulWidget {
  const CienciasSociales({super.key});

  @override
  State<CienciasSociales> createState() => _CienciasSocialesState();
}

class _CienciasSocialesState extends State<CienciasSociales>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
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
                      color: Color.fromARGB(255, 237, 132, 52),
                      icon: Icon(Icons.keyboard_arrow_left_sharp)),
                  Text(
                    'Ciencias Sociales',
                    style: TextStyle(
                        color: Color.fromARGB(255, 237, 132, 52), fontSize: 35),
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
                    indicatorColor: Color.fromARGB(255, 237, 132, 52),
                    tabs: [
                      Tab(
                        text: 'Historia',
                      ),
                      Tab(
                        text: 'Geografia',
                      ),
                      Tab(
                        text: 'Economia',
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
                child: TabBarView(
                  
                  controller: _tabController, children: [
                  // Uno
                  Historia(),
                  Geografia(),
                  Economia(),
                ]),
              )
            ],
          )),
    );
  }
}

class Historia extends StatefulWidget {
  const Historia({super.key});

  @override
  State<Historia> createState() => _HistoriaState();
}

class _HistoriaState extends State<Historia> {
  @override
  Widget build(BuildContext context) {
    var basica = {
      "Primera Guerra ": "Mundial - 1760-1840",
      "Segunda Guerra": "Mundial - 1939 y 1945",
      "Desc. de América": "ocurrido en el año 1492",
      "La  proclamación": "de la independencia del Peru - 1821",
      "La colonizacion": "de los españoles",
      "Antigua Grecia": "510 a 330 antes de cristo",
      "Primera revolución": "en los años 1760-1840",
      "Segunda revolución": "en los años 1760-1842",
      "Tercera revolución": "desde el siglo XX",
      "Las 7 maravillas ": "con el metodo cientifico",
      "Revolución Francesa": "en los años 1789-1799",
      "Revolución Rusa": "en los años 1917-1923",
      "Guerra del Pacífico": "en los años 1879-1883",
      "Guerra contra bolivia": "en los años 1837-1839",
      "Guerra contra Ecuador": "en los años 1858-1860",
      "Guerra Fria": "en los años 1947-1991",
    };
    var info = {
    "": "https://www.youtube.com/watch?v=Vbu6tH0Hc-o",
    "ssd": "https://youtu.be/AYQ8hT8cVTE",
    "dsdsd": "https://youtu.be/TD24cI-1bxw",
    "sdsss": "https://youtu.be/bouTKSroFRk",
    "sdsssss": "https://youtu.be/XLYB-GRE6Fk",
    "sdsds": "https://youtu.be/AtxY5h4Osmc",
    "ssdsds": "https://youtu.be/8-w2TAGvXQ4",
    "s": "https://youtu.be/fE9qiImGzJk",
    "sfbb": "https://youtu.be/Na8ncA3yvKo",
    "asta": "https://youtu.be/Fi0pcVQJx5Y",
    "dakjrk": "https://youtu.be/ttdq818TGD0",
    "skkcka": "https://youtu.be/-mnRwShLmXc ",
    "sssdksk": "https://youtu.be/w0gc3rvAcl0",
    "sssdksssdk": "https://youtu.be/2x6hYEWJvUU",
    "sssdksdsdsk": "https://youtu.be/mG2VEZ1G3ys ",
    "sssdkssssdsdsk": "https://youtu.be/EXijvhBQ-u8",
  };
   var autor = {
    "": "Academia Play",
    "ssd": "Academia Play",
    "dsdsd": "Happy Learning",
    "sdsss": "Tarea Facil YT",
    "sdsssss": "Memorias de Pez YT",
    "sdsds": "Happy Learning",
    "ssdsds": "Clases Particulares en Ávila ",
    "s": "Clases Particulares en Ávila",
    "sfbb": "En minutos YT",
    "asta": "TikTak Draw",
    "dakjrk": "Academia Play",
    "skkcka": "Academia Play",
    "sssdksk": "Draw my life",
    "sssdksssdk": "Exfors Histori",
    "sssdksdsdsk": "Exfors histori",
    "sssdkssssdsdsk": "Academia Play",
  };
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
              color: Color.fromARGB(171, 237, 132, 52),
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
                      Text("Crdts:"+autor.values.elementAt(index)),
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

class Geografia extends StatefulWidget {
  const Geografia({super.key});

  @override
  State<Geografia> createState() => _GeografiaState();
}

class _GeografiaState extends State<Geografia> {
  var basica = {
    "Países y capitales": "del mundo",
    "Relieve terrestre": "montañas, llanuras y valles",
    "Formac. geológicas": "volcanes, glaciares y cuevas",
    "Hidrografía Peruana": "de la independencia del Peru",
    "Vertiente": "Atlántico o del Amazonas",
    "Lagos y Lagunas": "del peru y algunos del mundo",
    "Glaciares y Aguas": "del peru y algunos del mundo",
    "El Mar Peruano": "caracteristicas y conceptos basicos",
    "Climas del Perú": "por temporadas y por efectos clim.",
    "Ecorregiones del Perú": "con el metodo cientifico",
    "Areas Naturales P.": "parques nacionales, santuarios, etc",
    "Límites del Perú": "",
    "Localización del Perú": "",


  };

  var info = {
    "sds": "",
    "ssd": "",
    "dsdsd": "",
    "sdsss": "",
    "sdsssss": "",
    "sdsds": "",
    "ssdsds": "",
    "s": "",
    "sfbb": "",
    "asta": "",
    "dakjrk": "",
    "skkcka": "",
    "sssdksk": "",
  };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: basica.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(171, 237, 132, 52),
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
                              Text("Crdts:"+info.values.elementAt(index)),

                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: Icon(Icons.keyboard_arrow_right_outlined))
                ]),
          );
        });
  }
}

class Economia extends StatefulWidget {
  const Economia({super.key});

  @override
  State<Economia> createState() => _EconomiaState();
}

class _EconomiaState extends State<Economia> {
   var basica = {
      "Métodos en Economía": "¡Que es? ",
      "Técnicas-procedimientos ": "en Economía",
      "La Evolución ": " del pensamiento en el ámbito economico",
      "La Inflacion": "¡Que es? ",
      "Producto Bruto Interno": "¡Que es? ",
      "El Mercado Económico": "¡Que es? ",
      "Capitalismo y socialismo": "¡Que es? ",
      "Desempleo": "¡Que es? ",
    };
    var link = {
      "https://youtu.be/ERBFhQ659Rs": "Andrea Itzanamí",
      "https://youtu.be/q5E3pUpN0fI": "Economia Desde Casa",
      "https://youtu.be/bho890XeAs4": "ECONOMY 29",
      "https://youtu.be/TOVvFXR3jA8": "Memorias de Tiburón",
      "https://youtu.be/oklV6Z5SvRM": "Enterarse",
      "https://youtu.be/NMOL5lzK4-M": "ECONOSUBLIME",
      "https://www.youtube.com/watch?v=XLTztNzoPTU": "Lifeder Educación",
      "https://youtu.be/lpEk4cN1e0E": "ECONOSUBLIME",
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
              color: Color.fromARGB(171, 237, 132, 52),
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
                      Text("Crdts:"+link.values.elementAt(index)),
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
