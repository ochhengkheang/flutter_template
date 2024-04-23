import 'package:flutter/material.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyBottomSheetTheme {
  MyBottomSheetTheme._();

  static final lightBottomSheetTheme = BottomSheetThemeData(
    //determines whether a drag handle is displayed at the top of the BottomSheet.
    //The --- in the middle of the bottomsheet
    showDragHandle: true,

    backgroundColor: Colors.white,

    //A modal bottom sheet is a pane that slides up from the bottom of the screen to present options to the user.
    //It's an alternative to a menu or a dialog and prevents the user from interacting with the rest of the app.
    modalBackgroundColor: Colors.white,

    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static final darkBottomSheetTheme = BottomSheetThemeData(
    //determines whether a drag handle is displayed at the top of the BottomSheet.
    //The --- in the middle of the bottomsheet
    showDragHandle: true,

    backgroundColor: Colors.black,

    //A modal bottom sheet is a pane that slides up from the bottom of the screen to present options to the user.
    //It's an alternative to a menu or a dialog and prevents the user from interacting with the rest of the app.
    modalBackgroundColor: Colors.black,

    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
