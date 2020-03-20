import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Back To HomeScreen'),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onPressed: () => Navigator.pop(context)
        ),
      ),
    );
  }
}