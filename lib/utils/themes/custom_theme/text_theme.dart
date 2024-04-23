import 'package:flutter/material.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyTextTheme {
  MyTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    //.copyWith() to only change change the default properties value we want, other default properties value will be kept
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32, //fixed value
      fontWeight: FontWeight.bold,
      color: Colors.black,
      // fontFamily: Assets.fonts.poppinsBold,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24, //fixed value
      fontWeight: FontWeight.w600,
      color: Colors.black,
      // fontFamily: Assets.fonts.poppinsSemiBold,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18, //fixed value
      fontWeight: FontWeight.w600,
      color: Colors.black,
      // fontFamily: Assets.fonts.poppinsSemiBold,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: 16, //fixed value
      fontWeight: FontWeight.w600,
      color: Colors.black,
      // fontFamily: Assets.fonts.poppinsSemiBold,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16, //fixed value
      fontWeight: FontWeight.w500,
      color: Colors.black,
      // fontFamily: Assets.fonts.poppinsMedium,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16, //fixed value
      fontWeight: FontWeight.w400,
      color: Colors.black,
      // fontFamily: Assets.fonts.poppinsRegular,
    ),

    bodyLarge: const TextStyle().copyWith(
      fontSize: 14, //fixed value
      fontWeight: FontWeight.w500,
      color: Colors.black,
      // fontFamily: Assets.fonts.poppinsMedium,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14, //fixed value
      fontWeight: FontWeight.normal,
      color: Colors.black,
      // fontFamily: Assets.fonts.poppinsRegular,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14, //fixed value
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.5),
      // fontFamily: Assets.fonts.poppinsRegular,
    ),

    labelLarge: const TextStyle().copyWith(
      fontSize: 12, //fixed value
      fontWeight: FontWeight.normal,
      color: Colors.black,
      // fontFamily: Assets.fonts.poppinsRegular,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12, //fixed value
      fontWeight: FontWeight.normal,
      color: Colors.black.withOpacity(0.5),
      // fontFamily: Assets.fonts.poppinsRegular,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    //.copyWith() to only change change the default properties value we want, other default properties value will be kept
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32, //fixed value
      fontWeight: FontWeight.bold,
      color: Colors.white,
      // fontFamily: Assets.fonts.poppinsBold,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24, //fixed value
      fontWeight: FontWeight.w600,
      color: Colors.white,
      // fontFamily: Assets.fonts.poppinsSemiBold,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18, //fixed value
      fontWeight: FontWeight.w600,
      color: Colors.white,
      // fontFamily: Assets.fonts.poppinsSemiBold,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: 16, //fixed value
      fontWeight: FontWeight.w600,
      color: Colors.white,
      // fontFamily: Assets.fonts.poppinsSemiBold,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16, //fixed value
      fontWeight: FontWeight.w500,
      color: Colors.white,
      // fontFamily: Assets.fonts.poppinsMedium,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16, //fixed value
      fontWeight: FontWeight.w400,
      color: Colors.white,
      // fontFamily: Assets.fonts.poppinsRegular,
    ),

    bodyLarge: const TextStyle().copyWith(
      fontSize: 14, //fixed value
      fontWeight: FontWeight.w500,
      color: Colors.white,
      // fontFamily: Assets.fonts.poppinsMedium,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14, //fixed value
      fontWeight: FontWeight.normal,
      color: Colors.white,
      // fontFamily: Assets.fonts.poppinsRegular,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14, //fixed value
      fontWeight: FontWeight.w400,
      color: Colors.white.withOpacity(0.5),
      // fontFamily: Assets.fonts.poppinsRegular,
    ),

    labelLarge: const TextStyle().copyWith(
      fontSize: 12, //fixed value
      fontWeight: FontWeight.normal,
      color: Colors.white,
      // fontFamily: Assets.fonts.poppinsRegular,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12, //fixed value
      fontWeight: FontWeight.normal,
      color: Colors.white.withOpacity(0.5),
      // fontFamily: Assets.fonts.poppinsRegular,
    ),
  );
}
