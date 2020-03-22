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
              padding: const EdgeInsets.symmetric(vertical: 8.0),
            ),
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
                  style: TextStyle(fontSize: 34),
                ),
                // TODO API CALL
                Text(
                  '13022',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
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
                  'Eigener Status',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                ),
                // TODO API CALL
                Text(
                  'Gesund',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
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
                  ),
                ),
                // TODO API CALL
                Text(
                  '13022',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    decoration: TextDecoration.underline,
                    color: Colors.green[500],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
