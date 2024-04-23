import 'package:flutter/material.dart';
import 'package:flutter_template/utils/consts/colors.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyAppBarTheme {
  MyAppBarTheme._();

  static const AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: MyColors.softGrey,
    surfaceTintColor: MyColors.softGrey,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  );

  static const AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: MyColors.darker,
    surfaceTintColor: MyColors.darker,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  );
}
