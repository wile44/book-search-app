import 'dart:convert';

RegisterResponseModel registerResponseJson(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

class RegisterResponseModel {
  RegisterResponseModel({
    required this.message,
    required this.id,
    required this.email,
    required this.accessToken,
  });
  late final String message;
  late final int? id;
  late final String? email;
  late final String? accessToken;

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    id = json['id'];
    email = json['email'];
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['id'] = id;
    _data['email'] = email;
    _data['accessToken'] = accessToken;
    return _data;
  }
}
