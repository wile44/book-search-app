import 'dart:convert';

import 'package:meta/meta.dart';

// LoginResponseModel loginResponseJson(String str) =>
//     LoginResponseModel.fromJson(json.decode(str));

// class LoginResponseModel {
//   LoginResponseModel({
//   required this.message,
//   required this.id,
//   required this.email,
//   required this.accessToken,
//   });
//   late final String message;
//   late final int? id;
//   late final String? email;
//   late final String? accessToken;

//   LoginResponseModel.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     id = json['id'];
//     email = json['email'];
//     accessToken = json['accessToken'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['message'] = message;
//     _data['id'] = id;
//     _data['email'] = email;
//     _data['accessToken'] = accessToken;
//     return _data;
//   }
// }

// To parse this JSON data, do
//
//     final UserResponse = UserResponseFromJson(jsonString);

UserResponse UserResponseFromJson(String str) =>
    UserResponse.fromJson(json.decode(str));

String UserResponseToJson(UserResponse data) => json.encode(data.toJson());

class UserResponse {
  UserResponse({
    required this.data,
    required this.message,
    required this.token,
  });

  Data data;
  String message;
  String token;

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        data: Data.fromJson(json["data"]),
        message: json["message"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
        "token": token,
      };
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.isAdmin,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String email;
  dynamic emailVerifiedAt;
  bool isAdmin;
  bool isActive;
  DateTime createdAt;
  DateTime updatedAt;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        isAdmin: json["isAdmin"],
        isActive: json["isActive"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "isAdmin": isAdmin,
        "isActive": isActive,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
