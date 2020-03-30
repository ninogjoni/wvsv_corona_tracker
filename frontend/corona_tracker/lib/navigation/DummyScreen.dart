import 'dart:async';
import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:corona_tracker/i18n/appLocalizations.dart';

import 'package:http/http.dart' as http;

class DummyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              color: Colors.lightBlue,
              width: 300,
              height: 200,
              child: Center(
                  child: Text('Container'),
              ),
            ),
            Container(
              color: Colors.red,
              width: 300,
              height: 200,
              child: Center(
                child: Text('Hello'),
              ),
            ),
            Container(
              color: Colors.green,
              width: 300,
              height: 200,
              child: Center(
                child: Text('World'),
              ),
            ),
          ],
      ),
    );
  }
}