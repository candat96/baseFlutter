

import 'package:flutter/material.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xfff2f2f2);
  static Color lightPrimaryColor = const Color(0xfff2f2f2);
  static Color lightAccentColor = Colors.blueGrey.shade200;
  static Color lightParticlesColor = const Color(0x44948282);

  static Color darkBackgroundColor = const Color(0xFF1A2127);
  static Color darkPrimaryColor = const Color(0xFF1A2127);
  static Color darkAccentColor = Colors.blueGrey.shade600;
  static Color darkParticlesColor = const Color(0x441C2A3D);


  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    // ignore: deprecated_member_use
    accentColor: lightAccentColor,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.orangeAccent),
      bodyText2: TextStyle(color: Colors.redAccent),
    ),
    backgroundColor: lightBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    // ignore: deprecated_member_use
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.green),
      bodyText2: TextStyle(color: Colors.amber),
    ),
    // ignore: deprecated_member_use
    accentColor: darkAccentColor,
    backgroundColor: darkBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

}

