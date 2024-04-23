import 'package:flutter/material.dart';
import 'package:flutter_template/utils/consts/colors.dart';
import 'package:flutter_template/utils/consts/sizes.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyElevatedButtonTheme {
  MyElevatedButtonTheme._();

  static final ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      fixedSize: const Size.fromHeight(MySizes.buttonHeight),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
        fontSize: 16, //fixed value
        fontWeight: FontWeight.w600,
      ),
      foregroundColor: MyColors.white,
      backgroundColor: MyColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );

  static final ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      fixedSize: const Size.fromHeight(MySizes.buttonHeight),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
        fontSize: 16, //fixed value
        fontWeight: FontWeight.w600,
      ),
      foregroundColor: MyColors.white,
      backgroundColor: MyColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
