import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../models/login_response_model.dart';
import 'storage_service.dart';

class AuthService {
  static Future<bool> isLoggedIn() async {
    var accessToken = await StorageService().readSecureData('accessToken');
    print(accessToken);

    // if (accessToken != null) {
    //   bool hasExpired = JwtDecoder.isExpired(accessToken);
    //   return !hasExpired;
    // } else {
    //   return false;
    // }
    return true;
  }

  static Future<void> setAccessToken(UserResponse model) async {
    StorageItem authTokenObj = StorageItem(
      key: 'accessToken',
      value: model.token,
    );
    await StorageService().writeSecureData(authTokenObj);
  }

  static Future<String?> getAccessToken() async {
    var accessToken = await StorageService().readSecureData('accessToken');
    if (accessToken != null) {
      return accessToken;
    }
  }

  static Future<void> logout(BuildContext context) async {
    await StorageService().deleteAllSecureData();
    Navigator.pushNamedAndRemoveUntil(
      context,
      "/login",
      (route) => false,
    );
  }
}
