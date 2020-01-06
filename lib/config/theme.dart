import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
    primaryColor: Color(0xFFFFD87D),
    accentColor: Color(0xFF82C5BC),
    fontFamily: 'Montserrat',
    textTheme: TextTheme(
      display1: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: Colors.black),
      body1: TextStyle(
          fontSize: 15.0, fontWeight: FontWeight.w300, letterSpacing: 0.5),
      headline: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w700,
          fontFamily: 'Merriweather',
          letterSpacing: 0.5),
      title: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w700, letterSpacing: 0.5),
      subtitle: TextStyle(
          fontSize: 13.0, fontWeight: FontWeight.w300, letterSpacing: 0.5),
    ));
