import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fall melden'),
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