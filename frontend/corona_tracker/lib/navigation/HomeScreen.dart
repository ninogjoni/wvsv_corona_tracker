import 'package:flutter/material.dart';
import './StatusScreen.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
          child: RaisedButton(
              child: Text('Go to StatusScreen'),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => StatusScreen(),
                  )))),
    );
  }
}