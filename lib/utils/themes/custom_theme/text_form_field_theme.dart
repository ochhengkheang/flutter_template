import 'package:flutter/material.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyTextFormFieldTheme {
  const MyTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,

    //prefix icon color displayed before the text input area
    prefixIconColor: Colors.grey,

    //prefix icon color displayed after the text input area
    suffixIconColor: Colors.grey,

    //constraints: BoxConstraints.expand(height: 14,inputFieldHeigth),

    labelStyle: const TextStyle().copyWith(
        fontSize: 14, //fixed value
        color: Colors.black),

    hintStyle: const TextStyle().copyWith(
        fontSize: 14, //fixed value
        color: Colors.black),

    floatingLabelStyle:
        const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),

    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),

    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.black12, width: 1),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.red, width: 1),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.orange, width: 2),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,

    //prefix icon color displayed before the text input area
    prefixIconColor: Colors.grey,

    //prefix icon color displayed after the text input area
    suffixIconColor: Colors.grey,

    //constraints: BoxConstraints.expand(height: 14,inputFieldHeigth),

    labelStyle: const TextStyle().copyWith(
        fontSize: 14, //fixed value
        color: Colors.white),
    hintStyle: const TextStyle().copyWith(
        fontSize: 14, //fixed value
        color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.white, width: 1),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.red, width: 1),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.orange, width: 2),
    ),
  );
}
