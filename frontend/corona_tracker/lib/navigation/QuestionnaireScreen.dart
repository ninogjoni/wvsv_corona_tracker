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
      body: Center(
        child: ListView(
            //shrinkWrap: true,
            padding: EdgeInsets.all(20.0),
            children: [
              Container(
                child:
                  Text(
                    'Beantworten Sie folgenden Fragen: ',
                    style: TextStyle(
                      fontSize: 30,

                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 260,
                      child:
                      Text('Ist deine Körpertemperatur mindestens 38,5°C oder höher?',
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 260,
                    child:
                    Text('Hast du ein trockenes Husten?',
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 260,
                    child:
                    Text('Hattest du bereits Kontakt mit einem Infizierten?',
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 260,
                      child:
                      Text('Warst du neulich in einem Risikogebiet?',
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