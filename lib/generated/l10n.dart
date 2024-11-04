// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
 
      return instance;
    });
  } 

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null, 'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Logo`
  String get logo {
    return Intl.message(
      'Logo',
      name: 'logo',
      desc: '',
      args: [],
    );
  }

  /// `Polecane`
  String get recommended {
    return Intl.message(
      'Polecane',
      name: 'recommended',
      desc: '',
      args: [],
    );
  }

  /// `Zaplanuj podróż`
  String get plan_your_trip {
    return Intl.message(
      'Zaplanuj podróż',
      name: 'plan_your_trip',
      desc: '',
      args: [],
    );
  }

  /// `Szlaki`
  String get trails {
    return Intl.message(
      'Szlaki',
      name: 'trails',
      desc: '',
      args: [],
    );
  }

  /// `Dłuższe godziny zwiedzania Muzeum`
  String get hours {
    return Intl.message(
      'Dłuższe godziny zwiedzania Muzeum',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `Carbonerum dla licealistów`
  String get carbonerum {
    return Intl.message(
      'Carbonerum dla licealistów',
      name: 'carbonerum',
      desc: '',
      args: [],
    );
  }

  /// `Error: {message}`
  String error_message(Object message) {
    return Intl.message(
      'Error: $message',
      name: 'error_message',
      desc: '',
      args: [message],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}