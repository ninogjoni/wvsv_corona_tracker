import 'package:corona_tracker/navigation/HomeScreen.dart';
import 'package:corona_tracker/navigation/StatusScreen.dart';
import 'package:corona_tracker/navigation/SettingsScreen.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    StatusScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('My Flutter App'),
      ),*/
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.airline_seat_individual_suite),
            title: new Text('Status'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Einstellungen')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}