// ignore_for_file: sized_box_for_whitespace, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:travel_sb/widget/app_large_text.dart';
import 'package:travel_sb/widget/responsive_buton.dart';
import '../widget/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
 var images = {
    "welcome-2.png":"Sumérgete en esta gran experiencia y conoce lo que tenemos para ti, siempre un paso por delante",
    "welcome-1.png":"La mejor educación te la damos aquí, está será tu arma más poderosa para poder cambiar realidades",
    "welcome-3.png":"Te ofrecemos lo mejor, esto no solo trata de letras y números sino que también está complementada por alma, mente y cuerpo ",
  };
  var titles = {
    "Bienvenido":"a App SB",
    "Alma Mater":"En la educacion",
    "La Mejor":"En Camana ",
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                   "img/"+images.keys.elementAt(index)           
                  ),
                fit: BoxFit.cover
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: titles.keys.elementAt(index)),
                      AppText(text: titles.values.elementAt(index)),
                      SizedBox(height: 15),
                      Container(
                        width: 270,
                        child: Text(
                          images.values.elementAt(index)
                        ),
                      ),
                      SizedBox(height: 30),
                      ResponsiveButton(width: 120,)
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 3),
                        width: 8,
                        height: index==indexDots?35:10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index==indexDots?Colors.blue:Colors.blue.withOpacity(0.4)
                        ),
                      );
                    }),
                  )
                ]
                ),
            ),
          );
      }),
    );
  }
}