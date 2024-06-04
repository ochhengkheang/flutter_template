import 'package:flutter/foundation.dart';

/// --- Template ---
// -- Don't forget to change class name
// -- Don't forget to change value
class MyApiConstant {
  static String getBaseUrl() {
    if (kDebugMode) {
      return "https://route.it";
    } else {
      throw Exception("Production mode is not supported yet");
    }
  }

  // Add here the route constants
  static const String basePath = "/api/v1";

  static const String tokenPath = "/token/";

  static const String refreshTokenPath = "${tokenPath}refresh/";
}
