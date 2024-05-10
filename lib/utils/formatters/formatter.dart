import 'package:intl/intl.dart';

/// --- Template ---
// -- Don't forget to change class name
class MyFormatters {
  MyFormatters._();
  static String formatDate({
    DateTime? date,
  }) {
    date ??= DateTime.now(); //if null return current date
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatPhoneNumber({
    required String phoneNumber,
    required String countryCode,
  }) {
    /// --- Example Test --- 085724231 --- +855
    /// --- return --- 85724231

    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    switch (countryCode) {
      case "+855":
        if (digitOnly.startsWith('0')) {
          phoneNumber = digitOnly.substring(1);
        }
        return phoneNumber;
      case "+1":
        return phoneNumber.replaceAll('-', ''); // Remove hyphens
      default:
        return phoneNumber;
    }
  }

  static String internationalPhoneNumber({
    required String phoneNumber,
    required String countryCode,
  }) {
    /// --- Example Test --- 085724231 --- +855
    /// --- return --- +85585724231

    // Add the country code
    final formattedNumber = StringBuffer();
    formattedNumber.write(countryCode);

    // Add the remaining digits without additional spacing
    formattedNumber.write(
        formatPhoneNumber(phoneNumber: phoneNumber, countryCode: countryCode));
    // print(formattedNumber.toString());
    return formattedNumber.toString();
  }
}
