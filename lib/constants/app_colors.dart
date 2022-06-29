import 'package:flutter/material.dart';

class AppColors {
  static const backgroundColor = Color.fromRGBO(77, 44, 123, 1.0);
  static const lightBackColor = Color.fromRGBO(98, 55, 152, 1.0);
  static const darkBackColor = Color.fromRGBO(43, 23, 75, 1.0);
  static const activeColor = Color.fromARGB(255, 122, 65, 186);
  static const hoverClor = Color.fromRGBO(255, 165, 93, 1.0);

  static const defaultGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomLeft,
    colors: [
      lightBackColor,
      darkBackColor,
    ],
  );

  static const darkShadow = BoxShadow(
      color: darkBackColor,
      offset: Offset(4.0, 4.0),
      blurRadius: 15.0,
      spreadRadius: 1.0);
  static const lightShadow = BoxShadow(
      color: lightBackColor,
      offset: Offset(-4.0, -4.0),
      blurRadius: 15.0,
      spreadRadius: 1.0);
}
