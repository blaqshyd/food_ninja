// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'colors.dart';

class MyThemes {
  // Dark Mode
  static final darkTheme = ThemeData(
    textTheme: Typography.englishLike2021.apply(fontSizeFactor: 1),
    scaffoldBackgroundColor: darkScaffoldBgColor,
    colorScheme: ColorScheme.dark(),
    brightness: Brightness.dark,
    
  );

  // Light Mode
  static final lightTheme = ThemeData(
    textTheme: Typography.englishLike2021.apply(fontSizeFactor: 1),

    scaffoldBackgroundColor: lightScaffoldBgColor,
    // primaryColorLight: backgroundColor,
    colorScheme: ColorScheme.light(),
  );
}

/*

 theme: ThemeData.light().copyWith(
        // primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
        primaryColorDark: Colors.amber,
        primaryColor: kPrimaryColor,
        primaryColorLight: kPrimaryColor,
        primaryTextTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),

*/