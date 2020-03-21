import 'package:corona_tracker/i18n/appLocalizations.dart';

import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).MapScreen_AppBarTitleText),
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