// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookShop _$$_BookShopFromJson(Map<String, dynamic> json) => _$_BookShop(
      id: json['id'] as int?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      phone: json['phone'] as String?,
      status: json['status'] as bool?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_BookShopToJson(_$_BookShop instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'phone': instance.phone,
      'status': instance.status,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
