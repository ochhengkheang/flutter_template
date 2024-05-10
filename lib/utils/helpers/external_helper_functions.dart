import 'package:flutter/material.dart';
import 'package:flutter_template/utils/consts/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:url_launcher/url_launcher.dart';

/// --- Template ---
// -- Don't forget to change class name
// This is a helper functions that use or import external packages.
// If the functions don't use or import external packages. put in MyHelperFunctions class.

class MyExternalHelperFunction {
  MyExternalHelperFunction._();
  static Future<String> pickImage({
    required ImageSource imageSource,
  }) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: imageSource,
    );
    return pickedFile == null ? "" : pickedFile.path;
  }

  static Future<void> urlLauncherHttp({
    required String url,
  }) async {
    Uri urlLaunchuri = Uri.parse(url);
    if (!await launchUrl(urlLaunchuri)) {
      MyExternalHelperFunction.showToast(
          message: 'Could not launch $urlLaunchuri');
    }
  }

  static Future<void> urlLauncherSms({
    required String number,
  }) async {
    final Uri smsLaunchUri = Uri(
      scheme: 'sms',
      path: number,
      queryParameters: <String, String>{
        'body': Uri.encodeComponent('Example Subject & Symbols are allowed!'),
      },
    );
    if (!await launchUrl(smsLaunchUri)) {
      MyExternalHelperFunction.showToast(
          message: 'Could not launch $smsLaunchUri');
    }
  }

  static Future<void> urlLauncherMail({
    required String number,
  }) async {
    final Uri mailLaunchUri = Uri(
      scheme: 'mailto',
      path: number,
      queryParameters: <String, String>{
        'body': Uri.encodeComponent('Example Subject & Symbols are allowed!'),
      },
    );
    if (!await launchUrl(mailLaunchUri)) {
      MyExternalHelperFunction.showToast(
          message: 'Could not launch $mailLaunchUri');
    }
  }

  // Reminder: Toast is like a snackbar
  static Future<bool?> showToast({
    required String message,
    Color backgroundColor = MyColors.error,
    Color textColor = MyColors.light,
    Toast? toastLength = Toast.LENGTH_SHORT,
    ToastGravity gravity = ToastGravity.CENTER,
    double fontSize = 16.0,
  }) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: toastLength,
        gravity: gravity,
        timeInSecForIosWeb: 1,
        backgroundColor: backgroundColor,
        textColor: textColor,
        fontSize: fontSize);
  }

  // Reminder: Check internet before any operations that require internet
  Future<bool> hasInternetConnection({
    required BuildContext context,
  }) async {
    final bool hasConnection = await InternetConnectionChecker().hasConnection;
    if (!hasConnection) {
      MyExternalHelperFunction.showToast(message: "No connection.");
      return false;
    }
    return true;
  }
}
