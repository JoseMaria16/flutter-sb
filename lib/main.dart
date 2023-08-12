// ignore_for_file: unused_import, prefer_const_constructors

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:travel_sb/courses/ciencia.dart';
import 'package:travel_sb/courses/comunicacion.dart';
import 'package:travel_sb/courses/matematica.dart';
import 'package:travel_sb/pages/details/ccss.dart';
import 'package:travel_sb/pages/details/cyt.dart';
import 'package:travel_sb/pages/details/dpcc.dart';
import 'package:travel_sb/pages/navpages/bar_item_pages.dart';
import 'package:travel_sb/pages/navpages/contact_page.dart';
import 'package:travel_sb/pages/navpages/home_page.dart';
import 'package:travel_sb/pages/navpages/library_page.dart';
import 'package:travel_sb/pages/navpages/main_pages.dart';
import 'package:travel_sb/pages/welcome_page.dart';
// import 'package:travel_sb/pages/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IsCorect(),
      ),
    );
  }
}
class IsCorect extends StatefulWidget {
  const IsCorect({super.key});
  @override
  State<IsCorect> createState() => _IsCorectState();
}
class _IsCorectState extends State<IsCorect> {
   String status = "Waiting...";
   Connectivity _connectivity = Connectivity();
   late StreamSubscription _streamSubscription;

     @override 
     void initState() {
      super.initState();
      checkConnectivity(); 
      checkRealTimeConnection();
     }


   void checkConnectivity() async {
    var connectionResult = await _connectivity.checkConnectivity();


    if (connectionResult == ConnectivityResult.mobile ) {
         status = "MobilData";
    } else if (connectionResult == ConnectivityResult.wifi) {
      status = "Wifi";
    } else {
      status = "No conected";
    } 
    setState(() {});
   }

  void checkRealTimeConnection() {
    // var connectionResult = Connectivity();

    _streamSubscription = _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ) {
         status = "MobilData";
    } else if (event  == ConnectivityResult.wifi) {
      status = "Wifi";
    } else {
      status = "No conected";
    } 
    setState(() {});
   
    });
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: status == "Wifi" || status == "MobilData"
        ? WelcomePage()
        : Center(
          child: Text('Revisa tu conexion a Internet'),
        ),
      ),
    );
  }
}
