import 'package:flutter/material.dart';
import 'package:flutter_template/utils/themes/themes.dart';

/// --- Template ---
// -- Don't forget to change class name
// This is a helper functions that use or import built_in flutter packages.
// If the functions don't use or import built_in flutter packages. put in MyExternalHelperFunctions class

class MyHelperFunctions {
  MyHelperFunctions._();
  static Color? getColor(String value) {
    if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    }

    return null;
  }

  static void showSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static Future<void> openModelBottomSheet(
      BuildContext context, Widget child) async {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      builder: (context) {
        return child;
      },
    );
  }

  static void showAlert(String title, String message, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("OK"))
          ],
        );
      },
    );
  }

  static void navigateToScreen(Widget screen, BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  static void navigateToScreenRemoveUntil(Widget screen, BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => screen,
        ),
        (route) => false);
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }

  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeigth(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidget(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      //This line creates a sublist of widgets for each row.
      //The sublist starts at index i and ends at index i + rowSize,
      //unless i + rowSize is greater than the length of the list, in which case it ends at the end of the list.
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }

  ThemeData getThemeData(TargetPlatform platform) {
    if (platform == TargetPlatform.iOS) {
      return MyTheme.materialLightTheme;
    } else {
      return MyTheme.materialLightTheme;
    }
  }
}
