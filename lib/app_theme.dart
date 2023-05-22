import 'package:flutter/material.dart';

ThemeData temaGelap = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      elevation: 0),
  colorScheme: const ColorScheme.dark(
    primary: Color.fromARGB(255, 58, 29, 7),
    secondary: Colors.black,
    tertiary: Color.fromARGB(255, 44, 44, 44),
  ),
  drawerTheme: const DrawerThemeData(
    shadowColor: Color.fromARGB(255, 255, 255, 255),
    backgroundColor: Colors.white,
    elevation: 0,
  ),
  iconTheme: const IconThemeData(color: Color.fromARGB(255, 184, 137, 33)),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Color.fromARGB(255, 44, 44, 44),
    hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
    suffixIconColor: Color.fromARGB(255, 255, 255, 255),
    prefixIconColor: Color.fromARGB(255, 255, 255, 255),
  ),
);

ThemeData temaTerang = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.black),
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0),
  colorScheme: const ColorScheme.light(
    primary: Color.fromARGB(255, 58, 29, 7),
    secondary: Color.fromARGB(255, 153, 119, 92),
    tertiary: Color.fromARGB(255, 158, 158, 158),
  ),
  drawerTheme: const DrawerThemeData(
    shadowColor: Color.fromARGB(0, 255, 255, 255),
    backgroundColor: Colors.white,
    elevation: 0,
  ),
  iconTheme: const IconThemeData(color: Color.fromARGB(255, 184, 137, 33)),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Color.fromARGB(255, 209, 209, 209),
    hintStyle: TextStyle(color: Colors.black),
    suffixIconColor: Color.fromARGB(255, 0, 0, 0),
    prefixIconColor: Color.fromARGB(255, 0, 0, 0),
  ),
);
