import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Dummy'),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            //onPressed: () => Navigator.pop(context)
        ),
      ),
    );
  }
}