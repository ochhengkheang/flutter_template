import 'package:flutter_dotenv/flutter_dotenv.dart';

class MyConfig {
  final String flavor = dotenv.env['FLAVOR'] ?? _falvor;

  static const String _falvor =
      String.fromEnvironment('FLAVOR', defaultValue: 'production');

  final String apiUrl = dotenv.env['API_URL'] ?? _apiUrl;

  static String get _apiUrl {
    switch (_falvor) {
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
