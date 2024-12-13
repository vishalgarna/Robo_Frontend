import 'package:flutter/material.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/views/PositionPage.dart';
import 'package:practice/views/homePage.dart';
import 'package:practice/views/profile.page.dart';
import 'package:practice/views/strategypage.dart';

import '../services/WbsocketServices.dart';

class Defaultpage extends StatefulWidget {
   Defaultpage({super.key});

   @override
  State<Defaultpage> createState() => _DefaultpageState();
}

class _DefaultpageState extends State<Defaultpage> {
  List<Widget> pagesList = [
    const HomePage(),
    const StrategyPage(),
    const PositionPage(),
    const ProfilePage()
    // PortpolioPage()
  ];

  int index = 0;

  @override
   void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:  Colors.blueGrey.shade100,
        currentIndex: index,
        onTap: (value){
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.adb),
              label: 'strategy',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: 'positions',

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',

          ),
        ],
      ),
      body: pagesList[index],
    );
  }
}
