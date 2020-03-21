import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hilfe'),
      ),
      body: Center(
        child: Center(
          child: Text(
            'Karte',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 32,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}