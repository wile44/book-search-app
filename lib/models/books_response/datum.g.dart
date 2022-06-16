// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['id'] as int?,
      name: json['name'] as String?,
      author: json['author'] as String?,
      items: json['items'] as String?,
      price: json['price'] as String?,
      cover: json['cover'] as String?,
      userId: json['user_id'] as int?,
      bookShopId: json['book_shop_id'] as int?,
      categoryId: json['category_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      bookShop: json['book_shop'] == null
          ? null
          : BookShop.fromJson(json['book_shop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'author': instance.author,
      'items': instance.items,
      'price': instance.price,
      'cover': instance.cover,
      'user_id': instance.userId,
      'book_shop_id': instance.bookShopId,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'category': instance.category,
      'book_shop': instance.bookShop,
    };
