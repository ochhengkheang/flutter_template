import 'package:shared_preferences/shared_preferences.dart';

/// --- Template ---
class SharePreferenceService {
  Future<bool> getBoolData(
    String key,
  ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Try reading data from the 'repeat' key. If it doesn't exist, returns false.
    return prefs.getBool(key) ?? false;
  }

  Future<void> setBooleanKey(String key, bool bool) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, bool);
  }

  Future<void> setIntKey(String key, int int) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, int);
  }
}
