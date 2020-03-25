import 'dart:async';
import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:corona_tracker/i18n/appLocalizations.dart';

import 'package:http/http.dart' as http;

class QuestionnaireScreen extends StatefulWidget {

  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();

}


class _QuestionnaireScreenState extends State<QuestionnaireScreen> {

  bool tempIsSwitched = false;
  bool DryIsSwitched = false;
  bool ContactIsSwitched = false;
  bool RiskIsSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fragebogen')
      ),
      body: Center(
        child: ListView(
            //shrinkWrap: true,
            padding: EdgeInsets.all(20.0),
            children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child:
                      Text('Wie hoch ist dein Fieber',
                      style: TextStyle(
                          fontSize: 20
                      )
                    ),
                  ),
                  Container(
                    child:
                    Switch(
                      value: tempIsSwitched,
                      onChanged: (value) {
                        setState(() {
                          tempIsSwitched = value;
                          print(tempIsSwitched);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child:
                    Text('Wie hoch ist dein Fieber',
                        style: TextStyle(
                            fontSize: 20
                        )
                    ),
                  ),
                  Container(
                    child:
                    Switch(
                      value: DryIsSwitched,
                      onChanged: (value) {
                        setState(() {
                          DryIsSwitched = value;
                          print(DryIsSwitched);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child:
                    Text('Wie hoch ist dein Fieber',
                        style: TextStyle(
                            fontSize: 20
                        )
                    ),
                  ),
                  Container(
                    child:
                    Switch(
                      value: ContactIsSwitched,
                      onChanged: (value) {
                        setState(() {
                          ContactIsSwitched = value;
                          print(ContactIsSwitched);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child:
                      Text('Wie hoch ist dein Fieber',
                          style: TextStyle(
                              fontSize: 20
                          )
                      ),
                    ),
                    Container(
                      child:
                      Switch(
                        value: RiskIsSwitched,
                        onChanged: (value) {
                          setState(() {
                            RiskIsSwitched = value;
                            print(RiskIsSwitched);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )
          ]
        )
      )
    );
  }
}