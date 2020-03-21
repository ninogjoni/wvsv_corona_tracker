import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'i18n/messages_all.dart';

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