import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Einstellungen'),
      ),
      body: Center(
          child: RaisedButton(
            child: Text('Go to Home'),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            /*onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => StatusScreen(),
                  ))*/
          )),
    );
  }
}