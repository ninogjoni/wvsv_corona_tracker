import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';


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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
          ),
          Text (
              'Wählen Sie hier Ihre Symptome aus',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
          ),
          CheckboxListTile(
            title: Text("title text"),
            value: true,
            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
          ),
          Text (
            'Bitte tragen Sie ihre Mobilnummer ein',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                )
          ),
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
              //TODO: i18n (Localization!)
              if (value.isEmpty) {
                return 'Die Mobilnummer darf nicht leer bleiben';
              }
              else if ('${value[0]}' == '0') {
                return 'Bitte die Mobilnummer hinter der 0 eingeben';
              }
              else if (value.length < 10) {
                return 'Die Mobilnummer ist zu kurz';
              }
              else if (value.length > 12) {
                return "Die Mobilnummer ist zu lang";
              }
              else
                return null;
            },
            onSaved: (String value) {
              //Hier werden die Daten an das Backend gesendet und dort weiter-
              //-bearbeitet
            },
          ),
//
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