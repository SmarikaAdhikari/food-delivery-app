// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.orange,
  ).copyWith(
    secondary: Colors.black,
    background: const Color.fromARGB(255, 240, 240, 240),
    surface: const Color.fromARGB(255, 233, 233, 233),
    onPrimary: const Color.fromARGB(248, 194, 246, 72),
    onPrimaryContainer: const Color.fromARGB(255, 72, 72, 72),
    onSecondary: Colors.white,
    onTertiary: Colors.grey[200],
    onBackground: Colors.grey[600],
    onSurface: Colors.grey,
    error: Colors.red,
    outline: Colors.grey.shade300,
  ),
  textTheme: TextTheme(
    headline1: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: 'Roboto',
    ),
    headline2: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    headline3: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: 'Roboto',
    ),
    bodyText1: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    bodyText2: const TextStyle(
      fontSize: 14.0,
      color: Colors.black54,
      fontFamily: 'Roboto',
    ),
    subtitle1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey[800],
      fontFamily: 'Roboto',
    ),
    subtitle2: const TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: 'Roboto',
    ),
    button: const TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
      fontFamily: 'Roboto',
    ),
    caption: const TextStyle(
      fontSize: 12.0,
      color: Colors.grey,
      fontFamily: 'Roboto',
    ),
    overline: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey[600],
      fontFamily: 'Roboto',
    ),
  ),
);
