import 'package:flutter/material.dart';
import 'package:flutter_template/utils/themes/custom_theme/text_theme.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyNavigationBarTheme {
  MyNavigationBarTheme._();
  static NavigationBarThemeData lightNavigationBarTheme =
      NavigationBarThemeData(
    labelTextStyle: MaterialStatePropertyAll(
      MyTextTheme.lightTextTheme.titleLarge,
    ),
  );
  static NavigationBarThemeData darkNavigationBarTheme = NavigationBarThemeData(
    labelTextStyle:
        MaterialStatePropertyAll(MyTextTheme.lightTextTheme.titleLarge),
  );
}
