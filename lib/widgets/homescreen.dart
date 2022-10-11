import 'dart:html';

import 'package:flutter/material.dart';
import './page1.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Widget> _screens = [
    // Content for Home tab
    Page1(),
    // Container(
    //   color: Colors.yellow.shade100,
    //   alignment: Alignment.center,
    //   child: const Text(
    //     'Home',
    //     style: TextStyle(fontSize: 40),
    //   ),
    // ),
    // Content for Feed tab
    Container(
      color: Colors.purple.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Search NearBy Pharmacies',
        style: TextStyle(fontSize: 40),
      ),
    ),
    // Content for Favorites tab
    Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: const Text(
        'Profile',
        style: TextStyle(fontSize: 40),
      ),
    ),
    // Content for Settings tab
    Container(
      color: Colors.pink.shade300,
      alignment: Alignment.center,
      child: const Text(
        'Settings',
        style: TextStyle(fontSize: 40),
      ),
    )
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Responsive site"),
      // ),
      bottomNavigationBar:  
      // MediaQuery.of(context).size.width < 640
          // ?
      BottomNavigationBar(
              currentIndex: _selectedIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.indigoAccent,
              // called when one tab is selected
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              // bottom tab items
              items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.near_me), label: 'NearBy'),
                  
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Profile'
                      )
                      
                ]
                )
        ,
          body: _screens[_selectedIndex],
    );
  }
}
