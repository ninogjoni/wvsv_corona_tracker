import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'messages_all.dart';

class AppLocalizations{
  AppLocalizations(this.localeName);

  static Future<AppLocalizations> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((_) {
      return AppLocalizations(localeName);
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }
  final String localeName;

/* TODO: Clean up */

/* Reusable text */

  String get cellphonenumberText {
    return Intl.message(r'cellphone number',
    name: r'cellphonenumberText',
    desc: r'The text for any mention of cellphone number',
    locale: localeName,
    );
  }

  String get cellphoneFieldValidator_ShouldNotBeEmptyText{
    return Intl.message(r'The cellphone number field cannot be left blank',
    name: r'cellphoneFieldValidator_ShouldNotBeEmptyText',
    desc: r'Validator message if field is empty',
    locale: localeName,
    );    
  }

  String get cellphoneFieldValidator_TooShortText{
    return Intl.message(r'The cellphone number is too short',
    name: r'cellphoneFieldValidator_TooShortText',
    desc: r'Validator message if field is too short',
    locale: localeName,
    );    
  }

  String get cellphoneFieldValidator_TooLongText{
    return Intl.message(r'The cellphone number is too long',
    name: r'cellphoneFieldValidator_TooLongText',
    desc: r'Validator message if number entered is too long',
    locale: localeName,
    );    
  }

  String get SendButtonText{
    return Intl.message(r'Send',
    name: r'SendButtonText',
    desc: r'Text for Send Buttons',
    locale: localeName,
    );     
  }


/* Home */

  String get bottomNavigationBarStatusText {
    return Intl.message(r'Status',
    name: r'bottomNavigationBarStatusText',
    desc: r'The text for the status button',
    locale: localeName,
    );
  }

  String get bottomNavigationBarMapText {
    return Intl.message(r'Map',
    name: r'bottomNavigationBarMapText',
    desc: r'The Text for the map button',
    locale: localeName,
    );
  }

  String get bottomNavigationBarReportText {
    return Intl.message(r'Send Report',
    name: r'bottomNavigationBarReportText',
    desc: r'The Text for the report button',
    locale: localeName,
    );
  }

  String get bottomNavigationBarHelpText {
    return Intl.message(r'Help',
    name: r'bottomNavigationBarHelpText',
    desc: r'The Text for the help button',
    locale: localeName,
    );
  }

/* Help Screen */

  String get HelpScreen_AppBarTitleText{
    return Intl.message(r'Help',
    name: r'HelpScreen_AppBarTitleText',
    desc: r'Title of the App Bar on Help page',
    locale: localeName,
    );
  }

/* Map Screen */

  String get MapScreen_AppBarTitleText{
    return Intl.message(r'Map',
    name: r'MapScreen_AppBarTitleText',
    desc: r'Title of the App Bar on Map page',
    locale: localeName,
    );
  }

/* Report Screen */

  String get ReportScreen_AppBarTitleText {
    return Intl.message(r'Send Report',
    name: r'ReportScreen_AppBarTitleText',
    desc: r'The Text for the Report page',
    locale: localeName,
    );
  }

  String get ReportScreen_FormSymptomPromptText {
    return Intl.message(r'Do you have any of the following symptoms?',
    name: r'ReportScreen_FormSymptomPromptText',
    desc: r'Asking if the user has any of the symptoms in the following text',
    locale: localeName,
    );
  }

  String get ReportScreen_CheckboxFeverText{
    return Intl.message(r'Fever',
    name: r'ReportScreen_CheckboxFeverText',
    desc: r'Fever',
    locale: localeName,
    );
  }

  String get ReportScreen_CheckboxFatigueText{
    return Intl.message(r'Fatigue',
    name: r'ReportScreen_CheckboxFatigueText',
    desc: r'Symptoms include Fever',
    locale: localeName,
    );
  }

  String get ReportScreen_CheckboxDryCoughText{
    return Intl.message(r'Dry Cough',
    name: r'ReportScreen_CheckboxDryCoughText',
    desc: r'Symptoms include dry coughing',
    locale: localeName,
    );
  }

  String get ReportScreen_CheckboxAchesText{
    return Intl.message(r'Aches/Joint pain',
    name: r'ReportScreen_CheckboxAchesText',
    desc: r'Symptoms include joint pain/aches',
    locale: localeName,
    );
  }

  
  String get ReportScreen_CellphoneNumberPromptText{
    return Intl.message(r'Please insert your cellphone number here',
    name: r'ReportScreen_CellphoneNumberPromptText',
    desc: r'asks the user for cellphone number',
    locale: localeName,
    );
  }

    String get ReportScreen_SendingReportText{
    return Intl.message(r'Sending Report...',
    name: r'ReportScreen_SendingReportText',
    desc: r'Message when report is sent',
    locale: localeName,
    );
  }

/* Settings Screen */

  String get SettingsScreen_AppBarTitleText{
    return Intl.message(r'Settings',
    name: r'SettingsScreen_AppBarTitleText',
    desc: r'Title of the App Bar on Settings page',
    locale: localeName,
    );
  }
/* Status Screen */

  String get StatusScreen_AppBarTitleText{
    return Intl.message(r'Status',
    name: r'StatusScreen_AppBarTitleText',
    desc: r'Title of the App Bar on Status page',
    locale: localeName,
    );
  }


/* PhoneNumber Model */

/* User Model */

  String get User_StatusUninfectious{
    return Intl.message(r'Not infectious',
    name: r'User_StatusUninfectious',
    desc: r'Status if a user is not infected',
    locale: localeName,
    );
  }

    String get User_StatusInfectious{
    return Intl.message(r'Infectious',
    name: r'User_StatusInfectious',
    desc: r'Status if a user is infected',
    locale: localeName,
    );
  }

    String get User_StatusSuspected{
    return Intl.message(r'Suspected',
    name: r'User_StatusSuspected',
    desc: r'Status if a user is suspected of being infected',
    locale: localeName,
    );
  }


}

  class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
    const AppLocalizationsDelegate();
    
    @override
    bool isSupported(Locale locale) => ['en', 'de'].contains(locale.languageCode);
  
    @override
    Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

    @override
    bool shouldReload(AppLocalizationsDelegate old) => false;
  }