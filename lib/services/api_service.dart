import 'dart:convert';

import 'package:http/http.dart' as http;

import '../config.dart';
import '../models/categories_response_model.dart';
import '../models/login_request_model.dart';
import '../models/login_response_model.dart';
import 'auth_service.dart';

class APIService {
  static var client = http.Client();

  static Future<UserResponse> login(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };

    var url = Uri.parse(Config.apiURL + 'login');
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    if (UserResponseFromJson(response.body).token != null) {
      await AuthService.setAccessToken(UserResponseFromJson(response.body));
    }

    return UserResponseFromJson(response.body);
  }

  static Future<String> userRequest(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };

    var url = Uri.parse('${Config.apiURL}register');
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    // print("response.body: ${response.body}");
    return jsonDecode(response.body)['message'];
  }

  static Future<String> getUserProfile() async {
    var accessToken = await AuthService.getAccessToken();

    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $accessToken",
    };

    var url = Uri.parse(Config.apiURL);
    var response = await client.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }

  static Future<List<Category>> getCategories() async {
    List<Category> data = <Category>[];
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
    };

    var url = Uri.parse(Config.apiURL);
    var response = await client.get(url, headers: requestHeaders);

    if (response.statusCode == 502) {
      // Bad Gateway
      return data = [];
    }

    data = categoriesResponseJson(response.body).data.categories;
    return data;
  }
}
