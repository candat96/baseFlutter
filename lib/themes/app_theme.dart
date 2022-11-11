// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum AppTheme {
  LightTheme,
  DarkTheme
}

final AppColor = {
  AppTheme.LightTheme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.red,
  ),

  AppTheme.DarkTheme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green,
  ),
};