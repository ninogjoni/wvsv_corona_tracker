import 'package:corona_tracker/i18n/appLocalizations.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).StatusScreen_AppBarTitleText),
      ),
      body: Center(
        child: ListView(
          children: [
            new Container(
              child: Image.asset(
                'assets/images/corona_tracker_homescreen_teaser.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [
                    Icon(
                      Icons.people,
                      color: Colors.blueGrey,
                      size: 50.0,
                    ),
                    // TODO i18n
                    Text(
                      'Benutzer',
                      style: TextStyle(
                          fontSize: 34,
                          decoration: TextDecoration.underline,
                      ),

                    ),
                    // TODO API CALL
                    Text(
                      '13022',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.green[500],
                      size: 50.0,
                    ),
                    // TODO i18n
                    Text(
                      'Status',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 34,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    // TODO API CALL
                    Text(
                      'Gesund',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.green[500],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [
                    Icon(
                      Icons.healing,
                      color: Colors.green[500],
                      size: 50.0,
                    ),
                    // TODO i18n
                    Text(
                      'Geheilt',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.green[500],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    // TODO API CALL
                    Text(
                      '12446',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.green[500],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.red[500],
                      size: 50.0,
                    ),
                    // TODO i18n
                    Text(
                      'Infiziert',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.red[500],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    // TODO API CALL
                    Text(
                      '6662',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.red[500],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
