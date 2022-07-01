// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_infos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfos _$$_UserInfosFromJson(Map<String, dynamic> json) => _$_UserInfos(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      isAdmin: json['isAdmin'] as bool?,
      isActive: json['isActive'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      bookShops: (json['book_shops'] as List<dynamic>?)
          ?.map((e) => BookShop.fromJson(e as Map<String, dynamic>))
          .toList(),
      books: (json['books'] as List<dynamic>?)
          ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserInfosToJson(_$_UserInfos instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'isAdmin': instance.isAdmin,
      'isActive': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'book_shops': instance.bookShops,
      'books': instance.books,
    };
