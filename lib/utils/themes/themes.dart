import 'package:flutter/material.dart';
import 'package:flutter_template/utils/consts/colors.dart';
import 'package:flutter_template/utils/themes/custom_theme/app_bar_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/bottom_nav_bar_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/bottom_sheet_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/checkbox_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/chip_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/elevated_button_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/navigation_bar_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/outline_button_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/progress_indicator_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/text_button_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/text_form_field_theme.dart';
import 'package:flutter_template/utils/themes/custom_theme/text_theme.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyTheme {
  MyTheme._();

  static final ThemeData materialLightTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.softGrey,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    textButtonTheme: MyTextButtonTheme.lightTextButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
    textTheme: MyTextTheme.lightTextTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: MyCheckBoxTheme.lightCheckboxTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    navigationBarTheme: MyNavigationBarTheme.lightNavigationBarTheme,
    bottomNavigationBarTheme:
        MyBottomNavigationBarTheme.lightBottomNavigationBarTheme,
    progressIndicatorTheme:
        MyProgressIndicatorTheme.progressIndicatorLightTheme,
    useMaterial3: true,
    brightness: Brightness.light,
  );

  static final ThemeData materialDarkTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.darker,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    textButtonTheme: MyTextButtonTheme.darkTextButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
    textTheme: MyTextTheme.darkTextTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: MyCheckBoxTheme.darkCheckboxTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    navigationBarTheme: MyNavigationBarTheme.darkNavigationBarTheme,
    bottomNavigationBarTheme:
        MyBottomNavigationBarTheme.darkBottomNavigationBarTheme,
    progressIndicatorTheme: MyProgressIndicatorTheme.progressIndicatorDarkTheme,
    useMaterial3: true,
    brightness: Brightness.dark,
  );
}
