import 'dart:convert';
import 'package:flutter_template/utils/consts/durations.dart';
import 'package:http/http.dart' as http;

/// --- Template ---
class RestApiService {
  RestApiService({
    required this.baseUrl,
  });
  final String baseUrl;

  // GET
  Future<Map<String, dynamic>> get(String endpoint) async {
    var response = await http
        .get(Uri.parse('$baseUrl/$endpoint'))
        .timeout(const Duration(seconds: MyDurations.timeOut));
    return _handleResponse(response);
  }

  // POST
  Future<Map<String, dynamic>> post(
      String endpoint, Map<String, dynamic> data) async {
    var response = await http
        .post(
          Uri.parse('$baseUrl/$endpoint'),
          headers: {
            'Content-type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(data),
        )
        .timeout(const Duration(seconds: MyDurations.timeOut));
    return _handleResponse(response);
  }

  // PUT
  Future<Map<String, dynamic>> put(
      String endpoint, Map<String, dynamic> data) async {
    var response = await http
        .put(
          Uri.parse('$baseUrl/$endpoint'),
          headers: {
            'Content-type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(data),
        )
        .timeout(const Duration(seconds: MyDurations.timeOut));
    return _handleResponse(response);
  }

  // DELETE
  Future<Map<String, dynamic>> delete(String endpoint) async {
    var response = await http
        .delete(Uri.parse('$baseUrl/$endpoint'))
        .timeout(const Duration(seconds: MyDurations.timeOut));
    return _handleResponse(response);
  }

  _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else if (response.statusCode == 500) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
