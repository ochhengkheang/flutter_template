class MyConfig {
  static const String flavor =
      String.fromEnvironment('FLAVOR', defaultValue: 'production');

  static String get apiUrl {
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
