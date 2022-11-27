import 'package:base_flutter/helpers/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String LAGUAGE_CODE = 'languageCode';

//languages code
const String ENGLISH = 'en';
const String VIETNAMESE = 'vi';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferencesHelper.setString(LAGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  String languageCode =  SharedPreferencesHelper.getString(LAGUAGE_CODE) as String;
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH, '');
    case VIETNAMESE:
      return const Locale(VIETNAMESE, '');
    default:
      return const Locale(VIETNAMESE, '');
  }
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context)!;
}
