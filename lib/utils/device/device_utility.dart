import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyDeviceUtils {
  MyDeviceUtils._();
  static void hideKeyboard({
    required BuildContext context,
  }) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  //changes the color of the status bar
  static Future<void> setStatusBarColor({
    required Color color,
  }) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  // determine if the device's current orientation is landscape
  static bool isLandscapeOrientation({
    required BuildContext context,
  }) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  // determine if the device's current orientation is landscape
  static bool isProtraitOrientation({
    required BuildContext context,
  }) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  static void setFullScreen({
    required bool enable,
  }) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight({
    required BuildContext context,
  }) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth({
    required BuildContext context,
  }) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio({
    required BuildContext context,
  }) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static double getStatusBarHeight({
    required BuildContext context,
  }) {
    return MediaQuery.of(context).padding.top;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getKeyboardHeight({
    required BuildContext context,
  }) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom;
  }

  static Future<bool> isKeyboardVisible({
    required BuildContext context,
  }) async {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom > 0;
  }

  static Future<bool> isPhysicleDevice({
    required BuildContext context,
  }) async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate({
    required Duration duration,
  }) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static Future<void> setPreferredOrientation({
    required List<DeviceOrientation> orientations,
  }) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isAndriod() {
    return Platform.isAndroid;
  }
}
