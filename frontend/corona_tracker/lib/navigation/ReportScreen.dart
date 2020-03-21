import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';
import 'package:corona_tracker/models/PhoneNumber.dart';


class ReportScreen extends StatelessWidget {
  @override
  ReportScreenFormState createState() {
    return ReportScreenFormState();
  }

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Fall melden';
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      title: appTitle,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ReportScreenForm(),
      ),
    );
  }
}

// Create a Form widget.
class ReportScreenForm extends StatefulWidget {
  @override
  ReportScreenFormState createState() {
    return ReportScreenFormState();
  }
}

class ReportScreenFormState extends State<ReportScreenForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              labelText: 'Mobilnummer',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Die Mobilnummer darf nicht leer bleiben';
              }
              else if (value.length < 11) {
                return 'Die Mobilnummer ist zu kurz';
              }
              else if (value.length > 16) {
                return "Die Mobilnummer ist zu lang";
              }
            },
            onSaved: (String value) {
              //Hier werden die Daten an das Backend gesendet und dort weiter-
              //-bearbeitet
              String phoneNumberE164 = PhoneNumber(value, Localizations.localeOf(context).countryCode).normalize();
              // vielleicht hier noch den String im TextFeld mit dem normalisierten ersetzen?
              print(phoneNumberE164);
            },
          ),
//          TextFormField(
//            decoration: const InputDecoration(
//              icon: Icon(Icons.person),
//              labelText: 'Vorname',
//
//            ),
//            validator: (value) {
//              if (value.isEmpty) {
//                return 'Please enter some text';
//              }
//              return null;
//            },
//            onSaved: (String value) {
//              //Hier werden die Daten an das Backend gesendet und dort weiter-
//              //-bearbeitet
//            },
//          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Fall wird gesendet')));
                  _formKey.currentState.save();
                }
              },
              child: Text('Senden'),
            ),
          ),
        ],
      ),
    );
  }
}