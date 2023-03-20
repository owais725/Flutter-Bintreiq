import 'package:flutter/material.dart';

import 'util/constant.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      // ignore: deprecated_member_use
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Color(0XFF8B8B8B)),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // labelText: "Email",
      // hintText: "Enter your Email",
      //floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10),
    ),
  );
}
