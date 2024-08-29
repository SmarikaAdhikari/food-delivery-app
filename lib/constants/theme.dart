// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.purple,
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
    outline: Colors.grey.shade500,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 20.0,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    headlineLarge: TextStyle(
      fontSize: 24.0,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    headlineMedium: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    headlineSmall: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: 'Roboto',
    ),
    titleLarge: TextStyle(
      fontSize: 24.0,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    titleMedium: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: 'Roboto',
    ),
    titleSmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: 'Roboto',
    ),
    labelLarge: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    labelMedium: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    labelSmall: TextStyle(
      fontSize: 16.0,
      color: Colors.black87,
      fontFamily: 'Roboto',
    ),
    displayLarge: TextStyle(
      fontSize: 16.0,
      color: Colors.grey,
      fontFamily: 'Roboto',
    ),
    displayMedium: TextStyle(
      fontSize: 16.0,
      color: Colors.black54,
      fontFamily: 'Roboto',
    ),
    displaySmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black54,
      fontFamily: 'Roboto',
    ),
  ),
);
