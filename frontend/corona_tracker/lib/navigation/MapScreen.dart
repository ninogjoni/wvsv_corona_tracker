import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Karte'),
      ),
      body: Center(
          child: RaisedButton(
            child: Text('Dummy'),
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