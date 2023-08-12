// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_sb/pages/navpages/bar_item_pages.dart';
import 'package:travel_sb/pages/navpages/contact_page.dart';
import 'package:travel_sb/pages/navpages/home_page.dart';
import 'package:travel_sb/pages/navpages/library_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    LibraryPage(),
    ContactPage()
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Color.fromARGB(255, 24, 20, 100),
        unselectedItemColor: Color.fromARGB(255, 189, 182, 182),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        iconSize: 40,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.app_registration_rounded)
          ),
          BottomNavigationBarItem(
            label: 'Library',
            icon: Icon(Icons.menu_book_outlined)
          ),
          BottomNavigationBarItem(
            label: 'Bar',
            icon: Icon(Icons.app_registration_rounded)
          ),
          
          BottomNavigationBarItem(
            label: 'Contact',
            icon: Icon(Icons.supervised_user_circle_outlined)
          ),
        ],
      ),
    );
  }
}