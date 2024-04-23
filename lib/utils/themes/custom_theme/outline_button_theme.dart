import 'package:flutter/material.dart';
import 'package:flutter_template/utils/consts/colors.dart';
import 'package:flutter_template/utils/consts/sizes.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyOutlinedButtonTheme {
  MyOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              fixedSize: const Size.fromHeight(MySizes.buttonHeight),
              elevation: 0,
              foregroundColor: Colors.black,
              side: const BorderSide(color: MyColors.darkGrey),
              textStyle: const TextStyle(
                  fontSize: 16, //fixed value
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              )));

  static OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              fixedSize: const Size.fromHeight(MySizes.buttonHeight),
              elevation: 0,
              foregroundColor: Colors.white,
              side: const BorderSide(color: MyColors.lightGrey),
              textStyle: const TextStyle(
                  fontSize: 16, //fixed value
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              )));
}
