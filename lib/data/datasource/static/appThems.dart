import 'package:anime_store/data/datasource/static/appColor.dart';
import 'package:flutter/material.dart';

class appTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith();
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    backgroundColor: appColor.darkbackground,
    hintColor: appColor.darkcolor,
    scaffoldBackgroundColor: appColor.darkbackground,
  );
}
