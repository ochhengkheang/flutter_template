import 'package:flutter/material.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyCheckBoxTheme {
  MyCheckBoxTheme._();

  static final lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),

    //check state and update the checkColor.
    //When the checkbox is selected, make the check mark white. Otherwise, make it black."
    checkColor: MaterialStateProperty.resolveWith((states) =>
        states.contains(MaterialState.selected) ? Colors.white : Colors.black),

    //check state and update the checkColor.
    //When the checkbox is selected, make the check mark blue. Otherwise, make it tranparent."
    fillColor: MaterialStateProperty.resolveWith((states) =>
        states.contains(MaterialState.selected)
            ? Colors.blue
            : Colors.transparent),
  );

  static final darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),

    //check state and update the checkColor.
    //When the checkbox is selected, make the check mark white. Otherwise, make it black."
    checkColor: MaterialStateProperty.resolveWith((states) =>
        states.contains(MaterialState.selected) ? Colors.white : Colors.black),

    //check state and update the checkColor.
    //When the checkbox is selected, make the check mark blue. Otherwise, make it tranparent."
    fillColor: MaterialStateProperty.resolveWith((states) =>
        states.contains(MaterialState.selected)
            ? Colors.blue
            : Colors.transparent),
  );
}
