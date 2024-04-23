import 'package:flutter_template/utils/formatters/formatter.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyValidator {
  MyValidator._();
  static String? validateEmail(String value) {
    if (value.isEmpty || value == '') {
      return 'Email is required';
    }

    // Regular expression for email validation
    // matches any string that starts with one or more alphanumeric characters or dots,
    // followed by the @ symbol, followed by one or more alphanumeric characters, a dot,
    // and one or more alphabetic characters. This pattern is commonly used to validate email addresses.
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
    );

    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  static String? validateString(String fieldName, String value) {
    if (value.trimLeft().trimRight().isEmpty || value == '') {
      return '$fieldName is required';
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty || value == '') {
      return 'Password is required';
    }

    // Check for minimun of password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    // Check for Upper case
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    // Check for Number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }

    // Check for Special Character
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value, String? countryCode) {
    if (countryCode == null || countryCode.isEmpty) {
      return 'Please select a country';
    }

    if (value == null || value.trimLeft().trimRight().isEmpty || value == '') {
      return 'Phone number is required';
    }

    value = MyFormatters.formatPhoneNumber(value, countryCode);

    // Regular expressions for phone number validation based on country code
    Map<String, RegExp> countryCodeRegexMap = {
      // Check Regex 101 for detail
      '+1': RegExp(r'^(1\s?)?(\d{3}|\(\d{3}\))[\s\-]?\d{3}[\s\-]?\d{4}$'),
      '+855': RegExp(r"^(1[^9]|3[18]|6[^2-5]|7[016-8]|8[^2]|9[^4])\d{6,7}$"),
      // Add more country codes and corresponding regex patterns as needed
    };

    /// Check if the selected country code is supported
    if (!countryCodeRegexMap.containsKey(countryCode)) {
      return 'Selected country code is not supported. Only support +855 and +1.';
    }

    // Get the regex pattern for the selected country code
    RegExp phoneNumberRegExp = countryCodeRegexMap[countryCode]!;
    // Check if the phone number matches the regex pattern
    if (!phoneNumberRegExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }

    return null;
  }

  // Add more validation according to your needs
}
