import 'package:flutter_dotenv/flutter_dotenv.dart';

class MyConfig {
  static const String flavor =
      String.fromEnvironment('FLAVOR', defaultValue: 'production');

  final String apiUrl = dotenv.env['API_URL'] ?? apiUrl_;

  static String get apiUrl_ {
    switch (flavor) {
      case 'development':
        return 'https://dev-api.example.com';
      case 'staging':
        return 'https://staging-api.example.com';
      case 'production':
      default:
        return 'https://api.example.com';
    }
  }
}
