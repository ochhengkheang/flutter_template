import 'package:flutter/material.dart';
import 'package:flutter_template/utils/themes/custom_theme/text_theme.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyBottomNavigationBarTheme {
  MyBottomNavigationBarTheme._();
  static BottomNavigationBarThemeData lightBottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    selectedLabelStyle: MyTextTheme.lightTextTheme.titleLarge,
    unselectedLabelStyle: MyTextTheme.lightTextTheme.titleLarge,
  );

  static BottomNavigationBarThemeData darkBottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    selectedLabelStyle: MyTextTheme.darkTextTheme.titleLarge,
    unselectedLabelStyle: MyTextTheme.darkTextTheme.titleLarge,
  );
}
