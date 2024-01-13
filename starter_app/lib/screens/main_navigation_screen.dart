import 'package:flutter/material.dart';
import 'package:starter_app/screens/record/player_audio_screen.dart';
import 'package:starter_app/screens/record/record_and_play_screen.dart';
import 'package:starter_app/screens/record/record_screen.dart';
import 'package:starter_app/screens/service_screen.dart';

import 'experts/experts_screen.dart';
import 'home_screen.dart';


class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({Key? key}) : super(key: key);

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<Widget> _pages = <Widget>[
      HomeScreen(),
      ServiceScreen(),
      ExpertsScreen(),
    ];
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Demo'),
      // ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.red,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 35),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,size: 35) ,
            label: 'sercice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people,size: 35) ,
            label: 'experts',
          ),
        ],
      ),
    );
  }
}
